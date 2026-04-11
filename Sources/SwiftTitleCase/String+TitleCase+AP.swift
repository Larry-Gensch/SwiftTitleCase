//
//  String+APDefinitions.swift
//  SwiftTitleCase
//
//  Created by Larry Gensch on 4/10/26.
//

import Foundation

internal extension String {
    /// AP Style specifics
    enum AP: TitleCaseWordList, TitleCaseStyleType {
        static let options: String.TitleStyleOptions = [
            .firstLastCapitalized,
            .lowerCase3orLessCharacters
        ]

        // TODO: These words are not just used as adjectives, so they should be context dependent but not implemented yet.
        internal static let wordListSet: Set<String> = [
            "a",
            "an",
            "and",
            "as",
            "at",
            "but",
            "by",
            "for",
            "if",
            "in",
            "nor",
            "of",
            "off",
            "on",
            "or",
            "per",
            "so",
            "the",
            "to",
            "up",
            "via",
            "yet",
        ]
    }
}
