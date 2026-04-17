//
//  String+TitleCase+Prepositions.swift
//  SwiftTitleCase
//
//  Created by Larry Gensch on 4/17/26.
//

internal extension String {
    enum Prepositions {
        internal static func prepositions(size: (any RangeExpression<Int>)?,
                                          useLessCommon: Bool) -> Set<String> {
            Set(
                (common + (useLessCommon ? lessCommon : []))
                    .compactMap {
                        if let size {
                            size.contains($0.count) ? $0 : nil
                        }
                        else {
                            $0
                        }
                    }
                )
        }

        internal static let common = [
            "about",
            "above",
            "across",
            "after",
            "against",
            "among",
            "around",
            "at",
            "before",
            "behind",
            "below",
            "beside",
            "between",
            "by",
            "down",
            "during",
            "for",
            "from",
            "in",
            "inside",
            "into",
            "near",
            "of",
            "off",
            "on",
            "out",
            "over",
            "through",
            "to",
            "toward",
            "under",
            "up",
            "with",
        ]

        internal static let lessCommon = [
            "aboard",
            "along",
            "amid",
            "as",
            "beneath",
            "beyond",
            "but",
            "concerning",
            "considering",
            "despite",
            "except",
            "following",
            "like",
            "minus",
            "next",
            "onto",
            "opposite",
            "outside",
            "past",
            "per",
            "plus",
            "regarding",
            "round",
            "save",
            "since",
            "than",
            "till",
            "underneath",
            "unlike",
            "until",
            "upon",
            "versus",
            "via",
            "within",
            "without",
        ]
    }
}
