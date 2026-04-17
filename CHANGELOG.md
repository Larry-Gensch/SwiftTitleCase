# Changelog

All notable changes to this project will be documented in this file.
The format is based on [Keep a Changelog](https://keepachangelog.com),
and this project adheres to [Semantic Versioning](https://semver.or).

## V0.4.5

### Changed:

- Directory structure has changed
- Updated README.md

## V0.4.4

### Fixed:

- Fixed code visibility issue

## V0.4.2

### Changed:

- Separate .Chicago into .Chicago17 (Version 17) and .Chicago (Version 18+)
- Do some refactoring of word lists and prepositions
- Added tests for MLA, Chicago, and Chicago17

## V0.4.1

### Added
- Allow "experimental" "bare slash regex literals"
- Add tests for Chicago style (longer prepositions lowercased)

### Fixed:
- Change packaging version to 5.10

## V0.4.0

### Fixed

- Ensure all existing tests run successfully
- Ensure visibility of all methods works properly

### CHANGED

- Update CHANGELOG.md and README.md to show updated work

## [Unreleased]

### Fixed

- Ensure all existing tests run successfully
- Separated all Swift Tests by type to allow focusing on particular
expectations easier.

### Added

- AP Style: Associated Press (original implementation)
- APA Style: American Psychological Association
- Chicago Style: Chicago Manual of Style (AKA CMS)
- MLS Style: Modern Language Association
- Each style has its own word list and options
- Options: .firstLastCapitalized and .lowerCase3orLessCharacters
- Add Locale support for various dialects of English
- Always capitalize pronouns
- Words less than four words are lower case (if style specifies it)
- Support "modern" (Swift 5.7) `Regex` but fallback to original
`NSRegularExpression` implementation for lower versions of Swift
- Introduced two protocols (TitleCaseWordList and TitleCaseStyleType)
- Moved TitleCaseStyle enumeration into String
- Added support for specifying a "default" style when `titleCase(...)`
is called without a specific style. (Still defaults to `.AP` if this
new default call is not used.)
- Added `String.titleCaseSetDefault(_style_, isGlobal: `Bool`) to set
the default style.

### Changed

- All functions, methods, and properties (static) are within String
extension

## [Unreleased]

### Fixed

- Renamed `TitleCaseTyle` to `TitleCaseStyle` (typo fix; **breaking change** for callers that referenced the type by name).
- Fixed a typo ("sourse") in the test suite.

### Added

- Added `visionOS` to the special-case word list.

### Changed

- `lowercaseWords` is now a `Set<String>` instead of an `Array`, giving O(1) membership tests.
- The apostrophe-splitting `NSRegularExpression` is now compiled once at module load instead of on every call.

## v0.3.1

### Changed

- Downgrade the `swift-tools-version` to 5.8 so older toolchains can use SwiftTitleCase.

## v0.3.0

### Changed

- Product names like _iPad mini_ and _Mac mini_ are now cased correctly.

## v0.2.0

### Changed

- `.titleCase()` now preserves capitalized letters (except first letter and lowercase words) by default.

## v0.1.0

- Initial release
