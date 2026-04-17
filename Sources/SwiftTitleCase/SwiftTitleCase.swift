// Copyright 2025 The SwiftTitleCase Authors.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Foundation

extension String {
    /// Converts a string to title case.
    ///
    /// - Parameters:
    ///   - style: The style of title case to use.
    ///   - preserveCase: Whether to preserve the existing capitalization of the words (except the first letter and lowercase words).
    ///   - locale: The locale to use for capitalization. Use `nil` for current locale.
    ///
    /// - Returns: The title case string.
    func titleCase(style: TitleCaseStyle? = .ap,
                   preserveCase: Bool = true,
                   locale: Locale? = nil) -> String {
        let words = components(separatedBy: " ")
        guard !words.isEmpty else { return self }

        let style = style ?? Self.defaultTitleCaseStyle

        let result = words.enumerated().map { index, word in
            guard !word.isEmpty else { return word }

            // Always capitalize first and last word
            if style.options.contains(.firstAndLastCapitalized),
               index == 0 || index == words.count - 1 {
                return capitalizeWord(
                    word,
                    style: style,
                    preserveCase: preserveCase,
                    beforeWord: index == 0 ? nil : words[index-1],
                    isFirstOrLast: true,
                    locale: locale
                )
            }

            if style.lowercaseWords.contains(word.lowercased(with: locale)) {
                return word.lowercased(with: locale)
            }

            if style.prepositions.contains(word.lowercased(with: locale)) {
                return word.lowercased(with: locale)
            }

            return capitalizeWord(word,
                                  style: style,
                                  preserveCase: preserveCase,
                                  beforeWord: index == 0 ? nil : words[index-1],
                                  locale: locale)
        }

        return result.joined(separator: " ")
    }

    private func specialCased(_ word: String,
                              beforeWord: String?,
                              isFirstOrLast: Bool,
                              locale: Locale?) -> String? {
        guard let specialCase = Self.SpecialCaseWords.wordList[word.lowercased(with: locale)] else {
            return nil
        }
        if let beforeWords = specialCase.beforeWords {
            guard let beforeLowercased = beforeWord?.lowercased(with: locale) else {
                return nil
            }
            if beforeWords.contains(beforeLowercased) {
                return specialCase.value
            }
            return nil
        } else {
            return specialCase.value
        }
    }

    fileprivate func capitalizeWord(_ word: String,
                                    style: TitleCaseStyle,
                                    preserveCase: Bool,
                                    beforeWord: String?,
                                    isFirstOrLast: Bool = false,
                                    locale: Locale?) -> String {
        guard !word.isEmpty else { return word }

        if word.contains("-") {
            return word.components(separatedBy: "-")
                .map { capitalizeWord($0,
                                      style: style,
                                      preserveCase: preserveCase,
                                      beforeWord: beforeWord,
                                      locale: locale) }
                .joined(separator: "-")
        }

        // Capitalized pronouns
        if Pronouns.wordListSet.contains(word.lowercased(with: locale)) {
            return word.capitalized(preserveCase: preserveCase, locale: locale)
        }

        if !word.contains("'") && !word.contains("’") {
            if let specialCase = specialCased(word,
                                              beforeWord: beforeWord,
                                              isFirstOrLast: isFirstOrLast,
                                              locale: locale) {
                return specialCase
            } else {
                if style.options.contains(.lowerCase3orLessCharacters),
                   word.count < 3,
                   !isFirstOrLast {
                    return word.lowercased(preserveCase: preserveCase, locale: locale)
                }
                var result = word
                let firstChar = result.removeFirst()
                if preserveCase {
                    return String(firstChar).uppercased(with: locale) + result
                } else {
                    return String(firstChar).uppercased(with: locale) + result.lowercased(with: locale)
                }
            }
        }

        // Original apostrophe code
        var parts = Apostrophe.splitWithApostrophes(word)
        for (index, part) in parts.enumerated() {
            if let specialCase = specialCased(part,
                                              beforeWord: beforeWord,
                                              isFirstOrLast: isFirstOrLast,
                                              locale: locale) {
                parts[index] = specialCase
            } else if index == 0 || part.count > 1 {
                // Only apply if the apostrophe is near the start (like O'Neill, not McDonald's)
                var part = part
                let firstChar = part.removeFirst()
                if preserveCase {
                    parts[index] = String(firstChar).uppercased(with: locale) + part
                } else {
                    parts[index] = String(firstChar).uppercased(with: locale) + part.lowercased(with: locale)
                }
            }
        }
        return parts.joined()
    }

    internal func capitalized(preserveCase: Bool, locale: Locale?) -> String {
        var string = self
        if preserveCase {
            let first = string.removeFirst()
            return String(first).uppercased(with: locale) + string
        }
        else {
            return string.capitalized(with: locale)
        }
    }

    internal func lowercased(preserveCase: Bool, locale: Locale?) -> String {
        var string = self
        if preserveCase {
            let first = string.removeFirst()
            return String(first).lowercased(with: locale) + string
        }
        else {
            return string.lowercased(with: locale)
        }
    }
}
