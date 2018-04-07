//
//  main.swift
//  LadderGame
//
//  Created by JK on 09/10/2017.
//  Copyright © 2017 Codesquad Inc. All rights reserved.
//

import Foundation

let inspector = LadderInspector()

func getPlayers() -> [LadderPlayer] {
    print("참여할 사람 이름을 입력하세요. (2명 이상만 가능하며, 이름은 쉼표(,)로 구분하세요)")
    print("이름길이는 영어 1자리 부터 5자리 까지 가능 합니다.")
    let players = inspector.players(input: InputView.readInput())
    return players == nil ? { print("등록할 선수 명단을 확인해 주세요."); return getPlayers() }() : players!
}

func getHeight() -> Int {
    print("최대 사다리의 높이는 몇 개인가요?")
    let height = inspector.height(input: InputView.readInput())
    return height == nil ? { print("높이는 1보다 큰 양의 정수만 가능합니다."); return getHeight() }() : height!
}

print("사다리 게임을 시작합니다.")
let players = getPlayers()
let height = getHeight()
var ladderGame = LadderGame(height: height, players: players)
ladderGame.makeLadderLayer()
ResultView.printResult(of: ladderGame)

