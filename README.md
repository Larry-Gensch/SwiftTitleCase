# SwiftTitleCase

A Swift package that tries its best to transform strings to
various style guides (defaulting to
[AP style title case](https://en.wikipedia.org/wiki/Title_case#AP_Stylebook).

[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fmangoumbrella%2FSwiftTitleCase%2Fbadge%3Ftype%3Dswift-versions)](https://swiftpackageindex.com/mangoumbrella/SwiftTitleCase)
[![](https://img.shields.io/endpoint?url=https%3A%2F%2Fswiftpackageindex.com%2Fapi%2Fpackages%2Fmangoumbrella%2FSwiftTitleCase%2Fbadge%3Ftype%3Dplatforms)](https://swiftpackageindex.com/mangoumbrella/SwiftTitleCase)

## Example usage

```swift
import SwiftTitleCase

let titleCased = "mango baby is a product under mango umbrella".titleCase()
print(titleCased)  // Mango Baby Is a Product Under Mango Umbrella
```

## Why SwiftTitleCase?

[Mango Umbrella](https://mangoumbrella.com/umbrella) has an
in-house client app managing its content. I needed a
convenience button that automatically transforms my blog
post's titles to AP style title case. So I wrote a basic
function just doing that.

## Why "tries its best"?

Currently the implementation only handles the basic rules. It doesn't
attempt to identify parts of speech contextually. For example, if
"up" is used as an adverb rather than a preposition, this package
would still lowercase it (unless it's the first or last word).
Contributions welcome!

## Style guides supported:

| Name  | Organization |
| :---- | :------------ |
| AP      | Associated Press |
| APA     | American Psychological Association |
| Chicago | Chicago Manual of Style (version 18+) |
| Chicago17 | Chicago Manual of Style (version 17) |
| MLA     | Modern Language Association |

The guides for the implementation of these styles were
taken from [ Blue Grammer Title Case Capitalization Rules ](https://bluegrammar.com/title-case-capitalization-rules/)
https://bluegrammar.com/title-case-capitalization-rules/ ]

## Usage:

```swift
func titleCase(
    style: TitleCaseStyle? = nil,
    preserveCase: Bool = true,
    locale: Locale? = nil
) -> String
```

**Parameters:**
- `style`<br>
The style of title case to use. If `nil,` use the default style (see below).
- `preserveCase`<br>
Whether to preserve the existing capitalization of the words (except the first letter and lowercase words).
- `locale`<br>
The locale to use for capitalization. Use nil for current locale.

**Returns:**<br>
The string, reformatted, according to the selected style, in title case.

### Default Styles

Originally, **SwiftTitleCase** only supported the AP capitalization style. Now that additional style guidelines
have been added, we have added a method for supporting a desired "default" style. Unless this method is used, the default
will continue to be the `.AP` style, for compatibility with previous versions of the code.

```swift
    static func String.titleCaseSetDefault(
        _ style: TitleCaseStyle?,
        isGlobal: Bool = true
    )
```

**Parameters:**

- `style`<br>
The default to use when no style is provided to the `titleCase()` function. If you set this to `nil`, it till remove
either the global or local default. Setting both to `nil` will cause the app to fallback to the AP style.

- `isGlobal`<br>
`true` if the default is to be remembered between app runs, or
`false` if the default is to be for the lifetime of the current app only.

The order in which the default is determined is as follows:
1. Global value (`isGlobal` == `true`), if set. Otherwise...
2. Local value (`isGlobal` == `false`), if set. Otherwise...
3. `.AP` style (if this method is never called, or both the local and global style has been set to `nil`).

The global value uses the standard `UserDefaults` to ensure the value is remembered between
app runs.

### Local versus Global

The local setting (`isGlobal` == `false`) is useful for specifying an app-specific setting for the style used for calls to
the `titleCase(...)` function, and you should ensure that you specify this at every app startup.

The global setting (`isGlobal` == `true`) is useful when allowing the user, rather than the app,
specify the desired style guide.

You can also use both to have the user specify a style, but fall back to an app-preferred style if no user style is set.

## Changelog

See [CHANGELOG.md](CHANGELOG.md).

## License

[SwiftTitleCase](https://github.com/Larry-Gensch/SwiftTitleCase) is licensed under the terms of the Apache license. See [LICENSE](LICENSE) for more information.
