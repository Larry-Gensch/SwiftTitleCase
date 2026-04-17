//
//  String+TitleCase+Chicago.swift
//  SwiftTitleCase
//
//  Created by Larry Gensch on 4/10/26.
//
// Word list taken from Chicago style reference:
// https://apastyle.apa.org/style-grammar-guidelines/capitalization/title-case

//Articles: a, an, the
//Coordinating conjunctions: and, but, for, nor, or, so, yet
//Prepositions (about, above, across, after, against, among, around, at, before,
//   behind, below, beside, between, by, down, during, for, from, in, inside, into,
//   near, of, off, on, out, over, through, to, toward, under, up, with)


import Foundation

internal extension String {
    enum Chicago: TitleCaseWordList , TitleCaseStyleType {
        static let prepositionsRange: any RangeExpression<Int> = 1...4

        static let options: String.TitleStyleOptions = [
            .firstAndLastCapitalized,
            .lowerCase3orLessCharacters,
            .useLessCommonPrepositions,
        ]

        internal static var wordListSet: Set<String> = [
            "a",        // Article
            "an",       // Article
            "and",      // Conjunction
            "but",      // Conjunction
            "for",      // Conjunction, Preposition
            "nor",      // Conjunction
            "or",       // Conjunction
            "so",       // Conjunction
            "the",      // Article
            "yet",      // Conjunction
        ]
    }

    enum Chicago17: TitleCaseWordList , TitleCaseStyleType {
        static let prepositionsRange: any RangeExpression<Int> = 1...

        static let options: String.TitleStyleOptions = [
            .firstAndLastCapitalized,
            .lowerCase3orLessCharacters,
            .useLessCommonPrepositions,
        ]

        internal static var wordListSet: Set<String> = [
            "a",        // Article
            "an",       // Article
            "and",      // Conjunction
            "but",      // Conjunction
            "for",      // Conjunction, Preposition
            "nor",      // Conjunction
            "or",       // Conjunction
            "so",       // Conjunction
            "the",      // Article
            "yet",      // Conjunction
        ]
    }
}
