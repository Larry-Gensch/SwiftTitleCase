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
        static let options: String.TitleStyleOptions = [
            .firstLastCapitalized,
            .lowerCase3orLessCharacters
        ]

        internal static let wordListSet: Set<String> = [
            "a",    // article
            "an",   // article
            "and",  // conjunction
            "as",   // conjunction
            "as",   // short preposition
            "at",   // short preposition
            "but",  // conjunction
            "by",   // short preposition
            "for",  // conjunction, short preposition
            "if",   // conjunction
            "in",   // short preposition
            "nor",  // conjunction
            "of",   // short preposition
            "off",  // short preposition
            "on",   // short preposition
            "or",   // conjunction
            "per",  // short preposition
            "so",   // conjunction
            "the",  // article
            "to",   // short preposition
            "up",   // short preposition
            "via",  // short preposition
            "yet",  // conjunction
        ]
    }
}
