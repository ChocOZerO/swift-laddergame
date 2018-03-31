//
//  ResultView.swift
//  LadderGame
//
//  Created by TaeHyeonLee on 2017. 10. 23..
//  Copyright © 2017년 Codesquad Inc. All rights reserved.
//

import Foundation

struct ResultView {
    // 사다리 출력
    static func printResult(result: LadderGame) {
        for index in result.ladder.indices {
            printLadderLineResult(lineResult: result.ladder[index])
        }
        printPlayers(players: result.names)
    }
    // 사다리 각 라인출력
    static private func printLadderLineResult(lineResult: [String]) {
        let playerCount : Int = lineResult.count
        print("  ", terminator: "")
        for j in 0..<(playerCount-1) {
            print(lineResult[j], terminator: "")
        }
        print(lineResult[playerCount-1])
    }
    // player 출력
    static private func printPlayers(players: [LadderPlayer]) {
        for player in players {
            print(player.name, terminator:" ")
        }
        print()
    }
}
