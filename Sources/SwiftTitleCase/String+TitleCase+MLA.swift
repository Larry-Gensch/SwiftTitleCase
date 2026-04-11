//
//  String+TitleCase+Chicago.swift
//  SwiftTitleCase
//
//  Created by Larry Gensch on 4/10/26.
//
import Foundation

internal extension String {
    enum MLA: TitleCaseWordList, TitleCaseStyleType {
        static let options: String.TitleStyleOptions = [
            .firstLastCapitalized,
            .lowerCase3orLessCharacters
        ]

        internal static var wordListSet: Set<String>  = [
            "a",        // Article
            "about",    // Preposition
            "about",    // Preposition
            "above",    // Preposition
            "above",    // Preposition
            "across",   // Preposition
            "after",    // Preposition
            "against",  // Preposition
            "among",    // Preposition
            "an",       // Article
            "and",      // Conjunction
            "around",   // Preposition
            "as",       // Conjunction
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
            "if",       // Conjunction
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
