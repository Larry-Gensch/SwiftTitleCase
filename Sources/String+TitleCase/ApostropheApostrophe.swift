//
//  String+TitleCase+Apostrophe.swift
//  SwiftTitleCase
//
//  Created by Larry Gensch on 4/11/26.
//

import Foundation

internal extension String {
    // European apostrophe'd names (e.g., O'Neill, D'Artagnan)

    enum Apostrophe: TitleCaseWordList {
        internal static let wordListSet: Set<String> = [
            "o",
            "O",
            "d",
            "D",
            "di",
            "Di",
        ]

        // Fallback for pre-iOS 16
        // Compiled once at module load; the pattern is a literal constant so force-try is safe.
        internal static let apostropheNSRegex = try! NSRegularExpression(pattern: "([^'’]+|['’])")

        // Uses iOS 16+ Swift.Regex
        @available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *)
        static private let apostropheRegex = /([^'’]+|['’])/

        internal static func splitWithApostrophes(_ input: String) -> [String] {
            if #available(iOS 16.0, macOS 13.0, tvOS 16.0, watchOS 9.0, *) {
                // Use Swift.Regex in iOS 16+
                let matches = input.matches(of: Self.apostropheRegex)
                return matches.compactMap { match in
                    return String(match.output.0)
                }
            }
            else {
                // fallback to NSRegularExpression
                let matches = Self.apostropheNSRegex.matches(in: input, range: NSRange(input.startIndex..., in: input))
                return matches.compactMap { match in
                    guard let range = Range(match.range, in: input) else { return nil }
                    return String(input[range])
                }
            }
        }

    }
}
