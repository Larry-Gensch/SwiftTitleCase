// Copyright 2025 The SwiftTitleCase Authors.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

import Testing
@testable import SwiftTitleCase

struct TestTitleCase {
    @Test("Basics")
    func basicTests() async throws {
        #expect("hello world".titleCase() == "Hello World")
        #expect("a tale of two cities".titleCase() == "A Tale of Two Cities")
    }

    @Test("Test first and last word always capitalized")
    func firstLast() async throws {
        #expect("in the heat of the night".titleCase() == "In the Heat of the Night")
        #expect("what is this for".titleCase() == "What is This For")
    }

    @Test("Hyphenated words")
    func hyphenatedWords() async throws {
        // Hyphenated words
        #expect("the well-known story".titleCase() == "The Well-Known Story")
    }


    @Test("Preserve existing capitalization")
    func preserveExisting() async throws {
        #expect("new open source package: SwiftTitleCase".titleCase() == "New Open Source Package: SwiftTitleCase")
        #expect("new open source package: swiftTitleCase".titleCase() == "New Open Source Package: SwiftTitleCase")
        #expect("I SAID VERY LOUDLY".titleCase() == "I SAID VERY LOUDLY")
        #expect("I SAID VERY LOUDLY".titleCase(preserveCase: true) == "I SAID VERY LOUDLY")
        #expect("I SAID VERY LOUDLY".titleCase(preserveCase: false) == "I Said Very Loudly")
        #expect("THIS IS A TEST".titleCase() == "THIS iS a TEST")  // Notice the `i` and a` is not preserved.
        #expect("THIS IS A TEST".titleCase(preserveCase: false) == "This is a Test")
    }

    @Test("Words with apostrophes")
    func apostrophies() async throws {
        #expect("o'neill's play".titleCase() == "O'Neill's Play")
        #expect("mcdonald's restaurant".titleCase() == "McDonald's Restaurant")
        #expect("the king's speech".titleCase() == "The King's Speech")
        // The following uses ’ instead of '.
        #expect("o’neill’s play".titleCase() == "O’Neill’s Play")
        #expect("mcdonald’s restaurant".titleCase() == "McDonald’s Restaurant")
        #expect("the king’s speech".titleCase() == "The King’s Speech")
        // Mixed use of ’ and ':
        #expect("o’neill's play".titleCase() == "O’Neill's Play")
        #expect("o'neill’s play".titleCase() == "O'Neill’s Play")
    }

    @Test("Special case words")
    func specialCase() async throws {
        #expect("MacBook Pro review".titleCase() == "MacBook Pro Review")
        #expect("iPhone and iPad apps".titleCase() == "iPhone and iPad Apps")
        #expect("apple's ipad mini and mac mini products.".titleCase() == "Apple's iPad mini and Mac mini Products.")
        #expect("note the mini itself should be capitalized!".titleCase() == "Note the Mini Itself Should be Capitalized!")
        #expect("mini mini and mini".titleCase() == "Mini Mini and Mini")
    }

    @Test("Edge cases")
    func edgeCases() async throws {
        #expect("".titleCase() == "")
        #expect("a".titleCase() == "A")
        #expect("THE".titleCase() == "THE")
        #expect("THE".titleCase(preserveCase: false) == "The")
    }

    @Test("Multiple spaces")
    func multipleSpaces() {
        #expect("the  lord  of  the  rings".titleCase() == "The  Lord  of  the  Rings")
    }

    @Test("Each Other")
    func eachOther() async throws {
        #expect("made for each other".titleCase() == "Made for Each Other")
    }

    @Test("No One")
    func noOne() async throws {
        #expect("This song is For no one".titleCase() == "This Song is for No One")
    }

    @Test("Pronouns")
    func pronounTests() async throws {
        #expect("this is what he wanted".titleCase() == "This is What He Wanted")
    }
}
