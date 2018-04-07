//
//  UnitTestLadderGame.swift
//  UnitTestLadderGame
//
//  Created by TaeHyeonLee on 2017. 10. 24..
//  Copyright © 2017년 Codesquad Inc. All rights reserved.
//

import XCTest

@testable import LadderGame

class UnitTestLadderGame: XCTestCase {
    var ladderGame : LadderGame!
    override func setUp() {
        super.setUp()
        ladderGame = LadderGame.init(height: 6,
                                     players: [LadderPlayer.init(name: "jake"),
                                             LadderPlayer.init(name: "jk"),
                                             LadderPlayer.init(name: "j"),
                                             LadderPlayer.init(name: "honux"),
                                             LadderPlayer.init(name: "pobi")])
    }

    override func tearDown() {
        super.tearDown()
    }

    func testLadderLayer() {
        XCTAssertEqual(ladderGame.players[0].name, "jake")
        XCTAssertEqual(ladderGame.players[1].name, "jk")
        XCTAssertEqual(ladderGame.players[2].name, "j")
        XCTAssertEqual(ladderGame.players[3].name, "honux")
        XCTAssertEqual(ladderGame.players[4].name, "pobi")
    }

    // TDD Study
    func test_사람수가_2명이상인지_13명_안에들어가는지_확인한다() {
    }

    func test_사람수가_1명이하인지_확인한다() {
    }

    func test_사람수가_14명이상인지_확인한다() {
    }

    func test_사다리높이가_1이상_13이하인지_확인한다() {
    }

    func test_사다리높이가_0이하인지_확인한다() {
    }

    func test_사다리높이가_14이상인지_확인한다() {
    }

    func test_모든사람이름의_길이가_1글자이상_5글자이하인지_확인한다() {
    }

    func test_한사람이라도_사람이름의_길이가_0이하인지_확인한다() {
    }

    func test_한사람이라도_사람이름의_길이가_6이상인지_확인한다() {
    }

    func test_가로사다리칸수가_입력받은_사람수보다_빼기1과_같은지_확인한다() {
    }

    func test_가로사다리칸수가_입력받은_사람수보다_빼기1보다_작은지_확인한다() {
    }

    func test_가로사다리칸수가_입력받은_사람수보다_빼기1보다_큰지_확인한다() {
    }

    func test_세로사다리칸수가_입력받은_사다리높이와_같은지_확인한다() {
    }

    func test_세로사다리칸수가_입력받은_사다리높이와_큰지_확인한다() {
    }

    func test_세로사다리칸수가_입력받은_사다리높이와_작은지_확인한다() {
    }

    func test_모든사다기칸에서_가로로_연속적인_두칸에_사다리칸이_모두_참인지_확인한다() {
    }

    func test_가로사다리칸_값이_랜덤으로_생성됐는지_확인한다() {
    }

}
