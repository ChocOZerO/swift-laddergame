//
//  InputChecker.swift
//  LadderGame
//
//  Created by TaeHyeonLee on 2018. 4. 6..
//  Copyright © 2018년 Codesquad Inc. All rights reserved.
//

import Foundation

struct LadderInspector {
    // MARK: Players
    func players(input: String) -> [LadderPlayer]? {
        let players = input.split(separator: ",").map { String($0).trimmingCharacters(in: [" "]) }
        guard validate(playerNames: players) else { return nil }
        return registAll(players: players)
    }
    private func validate(playerNames: [String]) -> Bool {
        guard playerNames.count > 1 else { return false }
        for player in playerNames where !validate(playerName: player) { return false }
        return true
    }
    private func validate(playerName: String) -> Bool {
        return !(playerName.isEmpty || playerName.unicodeScalars.count > 5)
    }
    private func registAll(players: [String]) -> [LadderPlayer] {
        return players.map { regist(player: $0) }
    }
    private func regist(player: String) -> LadderPlayer {
        return LadderPlayer(name: getActualName(from: player))
    }
    private func getActualName(from player: String) -> String {
        return ("".padding(toLength: Int(round(Double(5-player.count-2)/2)+1), withPad: " ", startingAt: 0) + player)
            .padding(toLength: 5, withPad: " ", startingAt: 0)
    }

    // MARK: Ladder Height
    func height(input: String) -> Int? {
        guard let height = Int(input) else { return nil }
        guard height > 1 else { return nil }
        return height
    }

}
