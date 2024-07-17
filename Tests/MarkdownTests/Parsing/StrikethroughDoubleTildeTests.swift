//
//  StrikethroughDoubleTildeTests.swift
//
//
//  Created by Hanny Hariyadi Prastya on 2024/07/18.
//

@testable import Markdown
import XCTest

class StrikethroughDoubleTildeTests: XCTestCase {
    /// Verify that only double tildes are parsed as strikethroughs
    func testDoubleTildeStrikethrough() {
        let text = """
        This is a ~~strikethrough~~ example, but this is ~not~.
        """
        
        let expectedDump = """
        Document @1:1-1:56
        └─ Paragraph @1:1-1:56
           ├─ Text @1:1-1:11 "This is a "
           ├─ Strikethrough @1:11-1:28
           │  └─ Text @1:13-1:26 "strikethrough"
           └─ Text @1:28-1:56 " example, but this is ~not~."
        """
        
        let document = Document(parsing: text, source: nil, options: [.onlyParseStrikethroughDoubleTilde])
        XCTAssertEqual(expectedDump, document.debugDescription(options: .printSourceLocations))
    }
}
