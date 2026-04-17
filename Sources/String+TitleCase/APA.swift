//
//  String+TitleCase+APA.swift
//  SwiftTitleCase
//
//  Created by Larry Gensch on 4/10/26.
//
// Word list taken from APA style reference:
// https://apastyle.apa.org/style-grammar-guidelines/capitalization/title-case

// short conjunctions (e.g., "and," "as," "but," "for," "if," "nor," "or," "so," "yet")
// articles ("a," "an," "the")
// short prepositions (e.g., "as," "at," "by," "for," "in," "of," "off," "on," "per," "to," "up," "via")


import Foundation

internal extension String {
    enum APA: TitleCaseWordList, TitleCaseStyleType {
        static let prepositionsRange: any RangeExpression<Int> = 1...3

        static let options: String.TitleStyleOptions = [
            .firstAndLastCapitalized,
            .lowerCase3orLessCharacters
        ]

        internal static let wordListSet: Set<String> = [
            "a",    // article
            "an",   // article
            "and",  // conjunction
            "as",   // conjunction
            "but",  // conjunction
            "for",  // conjunction, short preposition
            "if",   // conjunction
            "nor",  // conjunction
            "or",   // conjunction
            "so",   // conjunction
            "the",  // article
            "yet",  // conjunction
        ]
    }
}
