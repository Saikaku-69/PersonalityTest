//
//  AnserA.swift
//  PersonalityTest
//
//  Created by cmStudent on 2024/11/19.
//

import Foundation

struct Answer:Hashable {
    let id = UUID()
    var value: String
    
    static let answerA: [Answer] = [
        Answer(value: "A. 良好"),
        Answer(value: "B. 一般"),
        Answer(value: "C. あまり良くない"),
        Answer(value: "D. 非常に悪い")
    ]
    static let answerB: [Answer] = [
        Answer(value: "A. 運動を通じて"),
        Answer(value: "B. 瞑想やリラックスを通じて"),
        Answer(value: "C. 友達や家族と話すことで"),
        Answer(value: "D. 管理方法がわからない")
    ]
    static let answerC: [Answer] = [
        Answer(value: "A. とても自信がある"),
        Answer(value: "B. 一般的に自信がある"),
        Answer(value: "C. 時々自信がない"),
        Answer(value: "D. 全く自信がない")
    ]
    static let answerD: [Answer] = [
        Answer(value: "A. とても良い、たくさんの友達がいる"),
        Answer(value: "B. 一般的、いくつかの友達がいる"),
        Answer(value: "C. あまり良くない、友達が少ない"),
        Answer(value: "D. とても悪い、ほとんど友達がいない")
    ]
}
