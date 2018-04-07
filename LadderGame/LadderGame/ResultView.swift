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
    static func printResult(of game: LadderGame) {
        for index in game.ladder.indices {
            printLadderLineResult(lineResult: game.ladder[index])
        }
        printPlayers(players: game.players)
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
