//
//  AnserA.swift
//  PersonalityTest
//
//  Created by cmStudent on 2024/11/19.
//

import Foundation

struct AnswerA:Hashable {
    let id = UUID()
    var value: String
    
    static let answerA: [AnswerA] = [
        AnswerA(value: "A. 良好"),
        AnswerA(value: "B. 一般"),
        AnswerA(value: "C. あまり良くない"),
        AnswerA(value: "D. 非常に悪い")
    ]
}
