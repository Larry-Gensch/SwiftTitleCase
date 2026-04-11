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
        static let options: String.TitleStyleOptions = [
            .firstLastCapitalized,
            .lowerCase3orLessCharacters
        ]

        internal static var wordListSet: Set<String> = [
            "about",    // Preposition
            "above",    // Preposition
            "a",        // Article
            "about",    // Preposition
            "above",    // Preposition
            "across",   // Preposition
            "after",    // Preposition
            "against",  // Preposition
            "among",    // Preposition
            "an",       // Article
            "and",      // Conjunction
            "around",   // Preposition
            "at",       // Preposition
            "before",   // Preposition
            "behind",   // Preposition
            "below",    // Preposition
            "beside",   // Preposition
            "between",  // Preposition
            "but",      // Conjunction
            "by",       // Preposition
            "down",     // Preposition
            "during",   // Preposition
            "for",      // Conjunction, Preposition
            "from",     // Preposition
            "in",       // Preposition
            "inside",   // Preposition
            "into",     // Preposition
            "near",     // Preposition
            "nor",      // Conjunction
            "of",       // Preposition
            "off",      // Preposition
            "on",       // Preposition
            "or",       // Conjunction
            "out",      // Preposition
            "over",     // Preposition
            "so",       // Conjunction
            "the",      // Article
            "through",  // Preposition
            "to",       // Preposition
            "toward",   // Preposition
            "under",    // Preposition
            "up",       // Preposition
            "with",     // Preposition
            "yet",      // Conjunction
        ]
    }
}
