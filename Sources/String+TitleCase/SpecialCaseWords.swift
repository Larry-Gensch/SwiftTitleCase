//
//  String+TitleCase+SpecialCaseWords.swift
//  SwiftTitleCase
//
//  Created by Larry Gensch on 4/11/26.
//

import Foundation

internal extension String {
    enum SpecialCaseWords {
        internal static let wordList: [String: Transform] = [
            // Names
            "mcdonald": .init("McDonald"),
            // Products
            "ipad": .init("iPad"),
            "iphone": .init("iPhone"),
            "ipod": .init("iPod"),
            "imac": .init("iMac"),
            "macbook": .init("MacBook"),
            "ios": .init("iOS"),
            "macos": .init("macOS"),
            "watchos": .init("watchOS"),
            "tvos": .init("tvOS"),
            "visionos": .init("visionOS"),
            "mini": .init("mini", ["mac", "ipad"]),
            "linkedin": .init("LinkedIn"),
            "youtube": .init("YouTube"),
            // Programming
            "html": .init("HTML"),
            "css": .init("CSS"),
            "javascript": .init("JavaScript"),
            "typescript": .init("TypeScript"),
            // Multi-word pronouns
            "other": .init("Other", ["each"]),
            "one": .init("One", ["no"]),
            "another": .init("Another", ["one"]),
        ]


        internal struct Transform {
            let value: String
            // Only transform if the word (lowercased) before is in this `beforeWords` set.
            let beforeWords: Set<String>?

            init(_ value: String, _ beforeWords: Set<String>? = nil) {
                self.value = value
                self.beforeWords = beforeWords
            }
        }
    }


}
