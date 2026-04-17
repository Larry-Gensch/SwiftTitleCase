//
//  String+TitleCase+Chicago.swift
//  SwiftTitleCase
//
//  Created by Larry Gensch on 4/10/26.
//
import Foundation

internal extension String {
    enum MLA: TitleCaseWordList, TitleCaseStyleType {
        static let prepositionsRange: any RangeExpression<Int> = 1...

        static let options: String.TitleStyleOptions = [
            .firstAndLastCapitalized,
            .lowerCase3orLessCharacters,
            .useLessCommonPrepositions,
        ]

        internal static var wordListSet: Set<String>  = [
            "a",        // Article
            "an",       // Article
            "and",      // Conjunction
            "as",       // Conjunction
            "but",      // Conjunction
            "for",      // Conjunction
            "if",       // Conjunction
            "nor",      // Conjunction
            "or",       // Conjunction
            "out",      // Preposition
            "over",     // Preposition
            "the",      // Article
            "yet",      // Conjunction
        ]
    }
}
