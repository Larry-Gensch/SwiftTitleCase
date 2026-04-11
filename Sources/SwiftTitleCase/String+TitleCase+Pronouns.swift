//
//  String+TitleCase+Pronouns.swift
//  SwiftTitleCase
//
//  Created by Larry Gensch on 4/10/26.
//

import Foundation

internal extension String {
    enum Pronouns: TitleCaseWordList {
        // Three pronoun "pairs" ("each other," "no one," and "one another")
        // are handled by the specialCaseWords feature in SwifTitleCase.swift

        internal static let wordListSet: Set<String> = [
            "another",      // Pronoun
            "any",          // Pronoun
            "anybody",      // Pronoun
            "anyone",       // Pronoun
            "anything",     // Pronoun
            "aught",        // Pronoun (archaic)
            "both",         // Pronoun
            "each",         // Pronoun
            "either",       // Pronoun
            "enough",       // Pronoun
            "everybody",    // Pronoun
            "everyone",     // Pronoun
            "everything",   // Pronoun
            "few",          // Pronoun
            "he",           // Pronoun
            "her",          // Pronoun
            "herself",      // Pronoun
            "him",          // Pronoun
            "himself",      // Pronoun
            "his",          // Pronoun
            "i",            // Pronoun
            "it",           // Pronoun
            "itself",       // Pronoun
            "many",         // Pronoun
            "me",           // Pronoun
            "mine",         // Pronoun
            "most",         // Pronoun
            "myself",       // Pronoun
            "naught",       // Pronoun
            "neither",      // Pronoun
            "no",           // Pronoun
            "nobody",       // Pronoun
            "none",         // Pronoun
            "nothing",      // Pronoun
            "one",          // Pronoun
            "other",        // Pronoun
            "others",       // Pronoun
            "ought",        // Pronoun (archaic)
            "ours",         // Pronoun
            "ourself",      // Pronoun
            "ourselves",    // Pronoun
            "several",      // Pronoun
            "she",          // Pronoun
            "some",         // Pronoun
            "somebody",     // Pronoun
            "someone",      // Pronoun
            "something",    // Pronoun
            "such",         // Pronoun
            "suchlike",     // Pronoun
            "that",         // Pronoun
            "thee",         // Pronoun (archaic)
            "theirs",       // Pronoun
            "theirself",    // Pronoun
            "theirselves",  // Pronoun
            "them",         // Pronoun
            "themself",     // Pronoun
            "themselves",   // Pronoun
            "there",        // Pronoun
            "these",        // Pronoun
            "they",         // Pronoun
            "thine",        // Pronoun (archaic)
            "this",         // Pronoun
            "those",        // Pronoun
            "thou",         // Pronoun (archaic)
            "thy",          // Pronoun (archaic)
            "thyself",      // Pronoun (archaic)
            "us",           // Pronoun
            "we",           // Pronoun
            "what",         // Pronoun
            "whatever",     // Pronoun
            "whatsoever",   // Pronoun (archaic)
            "whether",      // Pronoun
            "which",        // Pronoun
            "whichever",    // Pronoun
            "whichsoever",  // Pronoun (archaic)
            "who",          // Pronoun
            "whoever",      // Pronoun
            "whom",         // Pronoun
            "whomever",     // Pronoun
            "whomso",       // Pronoun (archaic)
            "whomsoever",   // Pronoun
            "whose",        // Pronoun
            "whosever",     // Pronoun (rare)
            "whosesoever",  // Pronoun (formal)
            "whoso",        // Pronoun (archaic)
            "whosoever",    // Pronoun
            "ye",           // Pronoun (archaic)
            "yon",          // Pronoun (literary/dialect)
            "you",          // Pronoun
            "yours",        // Pronoun
            "yourself",     // Pronoun
            "yourselves",   // Pronoun
        ]
    }
}
