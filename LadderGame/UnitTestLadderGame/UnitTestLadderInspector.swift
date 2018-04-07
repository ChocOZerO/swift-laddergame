//
//  UnitTestLadderInspector.swift
//  UnitTestLadderGame
//
//  Created by TaeHyeonLee on 2018. 4. 7..
//  Copyright © 2018년 Codesquad Inc. All rights reserved.
//

import XCTest

@testable import LadderGame

class UnitTestLadderInspector: XCTestCase {
    var inspector : LadderInspector!
    override func setUp() {
        super.setUp()
        inspector = LadderInspector()
    }
    
    override func tearDown() {
        inspector = nil
        super.tearDown()
    }

    // MARK: Players
    func test_사람수가_2명이상인지_확인한다() {
        let input = "jake, j, jak"
        XCTAssertNotNil(inspector.players(input: input))
    }

    func test_사람수가_입력한_명단_수와_같은지_확인한다() {
        let input = "jake, j, jak"
        XCTAssertEqual(inspector.players(input: input)?.count, 3)
    }

    func test_사람수가_1명이하인지_확인한다() {
        var input = ""
        XCTAssertNil(inspector.players(input: input))
        input = "jake"
        XCTAssertNil(inspector.players(input: input))
    }

    func test_모든사람이름의_길이가_1글자이상_5글자이하인지_확인한다() {
        let input = "jake, j, jak, jakea, ja"
        XCTAssertEqual(inspector.players(input: input)?.count, 5)
    }

    func test_한사람이라도_사람이름의_길이가_6이상인지_확인한다() {
        let input = "jake, j, jak, jakea, ja, jakeja"
        XCTAssertNil(inspector.players(input: input))
    }

    func test_한사람이라도_사람이름의_길이가_0이하인지_확인한다() {
        let input = "jake, j, jak, jakea, ja, "
        XCTAssertNil(inspector.players(input: input))
    }

    // MARK: Height
    func test_사다리높이가_1보다_큰지_확인한다() {
        var input = "2"
        XCTAssertNotNil(inspector.height(input: input))
        input = "10"
        XCTAssertNotNil(inspector.height(input: input))
    }

    func test_사다리높이가_입력한_값과_같은지_확인한다() {
        var input = "2"
        XCTAssertEqual(inspector.height(input: input), 2)
        input = "10"
        XCTAssertEqual(inspector.height(input: input), 10)
    }

    func test_사다리높이가_1이하인지_확인한다() {
        var input = "1"
        XCTAssertNil(inspector.height(input: input))
        input = "0"
        XCTAssertNil(inspector.height(input: input))
        input = "-1"
        XCTAssertNil(inspector.height(input: input))
    }

}
