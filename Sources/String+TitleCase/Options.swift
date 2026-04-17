//
//  String+TitleCase+Options.swift
//  SwiftTitleCase
//
//  Created by Larry Gensch on 4/17/26.
//

import Foundation

internal extension String {
    struct TitleStyleOptions: OptionSet {
        var rawValue: Int

        static internal let firstAndLastCapitalized = Self(rawValue: 1 << 0)
        static internal let lowerCase3orLessCharacters = Self(rawValue: 1 << 3)
        static internal let useLessCommonPrepositions = Self(rawValue: 1 << 4)
    }
}
