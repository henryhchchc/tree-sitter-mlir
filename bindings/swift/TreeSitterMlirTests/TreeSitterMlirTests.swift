import XCTest
import SwiftTreeSitter
import TreeSitterMlir

final class TreeSitterMlirTests: XCTestCase {
    func testCanLoadGrammar() throws {
        let parser = Parser()
        let language = Language(language: tree_sitter_mlir())
        XCTAssertNoThrow(try parser.setLanguage(language),
                         "Error loading Mlir grammar")
    }
}
