//
//  UnitTestLadderPlayer.swift
//  UnitTestLadderGame
//
//  Created by TaeHyeonLee on 2017. 10. 26..
//  Copyright © 2017년 Codesquad Inc. All rights reserved.
//

import XCTest

@testable import LadderGame

class UnitTestLadderPlayer: XCTestCase {
    var ladderPlayer : LadderPlayer!
    override func setUp() {
        super.setUp()
        ladderPlayer = LadderPlayer.init(name: "tester")
    }
    func testInitializer() {
        XCTAssertEqual(ladderPlayer.name, "tester")
    }
}
