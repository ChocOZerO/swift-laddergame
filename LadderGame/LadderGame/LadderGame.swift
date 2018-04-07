//
//  LadderGame.swift
//  LadderGame
//
//  Created by TaeHyeonLee on 2017. 10. 23..
//  Copyright © 2017년 Codesquad Inc. All rights reserved.
//

import Foundation

struct LadderGame {
    private let height: Int
    private(set) var players: [LadderPlayer]
    private(set) var ladder: [[String]]

    // 사다리 구성 요소
    private enum LadderPrint {
        case bar
        case step
        case empty
        var value: String {
            switch self {
            case .bar: return "|"
            case .step: return "-----"
            case .empty: return "     "
            }
        }
    }
    // Initializer
    init(height: Int, players: [LadderPlayer]) {
        self.height = height
        self.players = players
        self.ladder = []
    }
    // 사다리 틀 만들기
    mutating func makeLadderLayer() {
        for index in 0..<height {
            ladder.append([String]())
            setLadderLine(lineNum: index)
            ladder[index].append(LadderPrint.bar.value)
        }
    }
    // 사다리 각 라인 만들기
    mutating private func setLadderLine(lineNum: Int) {
        for _ in 1..<players.count {
            self.ladder[lineNum].append(LadderPrint.bar.value)
            setStep(lineNum: lineNum, isStep: isStep())
        }
    }
    // 발판 유무
    mutating private func setStep(lineNum: Int, isStep: Bool) {
        isStep ? ladder[lineNum].append(LadderPrint.step.value) : ladder[lineNum].append(LadderPrint.empty.value)
    }

    private func isStep() -> Bool {
        return Int(arc4random_uniform(2)) > 0
    }

}
