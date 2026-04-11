//
//  String+TitleCase+Defaults.swift
//  SwiftTitleCase
//
//  Created by Larry Gensch on 4/10/26.
//

import Foundation

extension String {
    private enum C {
        static let defaultsKey = "SwiftTitleCase.defaultTitleCaseStyle"
        static let noDefault = TitleCaseStyle.AP
    }
    private static var singleRunTitleCaseStyle: TitleCaseStyle? = nil

    internal static var defaultTitleCaseStyle: TitleCaseStyle {
        get {
            if let storedValue = UserDefaults.standard.string(
                forKey: C.defaultsKey
            ) {
                TitleCaseStyle(rawValue: storedValue) ?? C.noDefault
            }
            else if let singleRunTitleCaseStyle {
                singleRunTitleCaseStyle
            }
            else {
                C.noDefault
            }
        }
        set {
            let rawValue = newValue.rawValue
            UserDefaults.standard.set(rawValue, forKey: C.defaultsKey)
        }
    }
    
    /// Provide a default for `titleCase(style: *value*`)`
    /// - Parameters:
    ///   - style: The default to use when no style is provided to the function. If `nil`,
    ///   the specified default style will be unset.
    ///   - isGlobal: `true` if the default is to be remembered between program runs, or
    ///   false if the default is to be for the lifetime of the current app only.
    ///
    /// The order in which the default is determined is as follows:
    /// 1. Local value (`isGlobal` == `false`), if set. Otherwise...
    /// 2. Global value (`isGlobal` == `true`), if set. Otherwise...
    /// 3. `.AP` style (traditional)
    ///
    /// The Global value uses `UserDefaults` to ensure the value is remembered between
    /// app runs.
    public func titleCaseSetDefault(_ style: TitleCaseStyle,
                                    isGlobal: Bool = true) {
        if isGlobal {
            Self.defaultTitleCaseStyle = style
        }
        else {
            Self.singleRunTitleCaseStyle = style
        }
    }
}
