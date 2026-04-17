//
//  String+TitleCase+Style.swift
//  SwiftTitleCase
//
//  Created by Larry Gensch on 4/17/26.
//

public extension String {
    /// Styles that can be used for title case rules.
    ///
    /// Styles supported:
    /// - `.AP` ( Associated Press), also `.ap`
    /// - `.APA`( American Psychological Association), also: `.apa`
    /// - `.Chicago17` (Chicago Manual of Style, version 17), also: `.chicago17`,  `.cms17', `.CMS17`
    /// - `.Chicago` (Chicago Manual of Style, version 18+)`, also: `.Chicago18`, `.cms`, `cms18`, `.CMS18`
    /// - `.MLA` (Modern Language Association), also: `.mla`
    ///
    enum TitleCaseStyle: String {
        /// Associated Press
        case AP         /// Associated Press
        case APA        /// American Psychological Association
        case Chicago17  /// Chicago Manual of Style, version 17
        case Chicago    /// Chicago Manual of Style, version 18
        case MLA        /// Modern Language Association
                        // TODO: Add more styles as needed.

        var lowercaseWords: Set<String> {
            switch self {
            case .AP:
                String.AP.wordListSet
            case .APA:
                String.APA.wordListSet
            case .Chicago:
                String.Chicago.wordListSet
            case .Chicago17:
                String.Chicago17.wordListSet
            case .MLA:
                String.MLA.wordListSet
            }
        }

        var prepositions: Set<String> {
            switch self {
            case .AP:
                String.Prepositions
                    .prepositions(
                        size: String.AP.prepositionsRange,
                        useLessCommon: false
                    )
            case .APA:
                String.Prepositions
                    .prepositions(
                        size: String.APA.prepositionsRange,
                        useLessCommon: false
                    )
            case .Chicago:
                String.Prepositions
                    .prepositions(
                        size: String.Chicago.prepositionsRange,
                        useLessCommon: false
                    )
            case .Chicago17:
                String.Prepositions
                    .prepositions(
                        size: String.Chicago17.prepositionsRange,
                        useLessCommon: false
                    )
            case .MLA:
                String.Prepositions
                    .prepositions(
                        size: String.MLA.prepositionsRange,
                        useLessCommon: false
                    )
            }
        }

        var options: TitleStyleOptions {
            switch self {
            case .AP:
                String.AP.options
            case .APA:
                String.APA.options
            case .Chicago, .Chicago17:
                String.Chicago.options
            case .MLA:
                String.MLA.options
            }
        }

        // For those that prefer lower-case enums cases:

        /// Associated Press
        public static let ap = Self.AP
        /// American Psychological Association
        public static let apa = Self.APA
        /// Chicago Manual of Style
        public static let chicago = Self.Chicago
        /// Modern Language Association
        public static let mla = Self.MLA

        // Chicago is also known as CMS (Chicago Manual of Style)

        /// Chicago Manual of Style
        public static let CMS = Self.Chicago
        /// Chicago Manual of Style
        public static let cms = Self.Chicago
    }
}
