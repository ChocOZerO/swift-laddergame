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
                                     names: [LadderPlayer.init(name: "jake"),
                                             LadderPlayer.init(name: "jk"),
                                             LadderPlayer.init(name: "j"),
                                             LadderPlayer.init(name: "honux"),
                                             LadderPlayer.init(name: "pobi")])
    }

    override func tearDown() {
        super.tearDown()
    }

    func testLadderLayer() {
        XCTAssertEqual(ladderGame.names[0].name, "jake")
        XCTAssertEqual(ladderGame.names[1].name, "jk")
        XCTAssertEqual(ladderGame.names[2].name, "j")
        XCTAssertEqual(ladderGame.names[3].name, "honux")
        XCTAssertEqual(ladderGame.names[4].name, "pobi")
    }
    
}
