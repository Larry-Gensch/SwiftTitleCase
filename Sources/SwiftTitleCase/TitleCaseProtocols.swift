//
//  TitleCaseProtocols.swift
//  SwiftTitleCase
//
//  Created by Larry Gensch on 4/17/26.
//

import Foundation

internal protocol TitleCaseWordList {
    static var wordListSet: Set<String> { get }
}

internal protocol TitleCaseStyleType {
    static var options: String.TitleStyleOptions { get }
    static var prepositionsRange: any RangeExpression<Int> { get }
}

