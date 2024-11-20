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
    var point: Int?
    
    static var answerA: [Answer] = [
        Answer(value: "A. 良好", point: 15),
        Answer(value: "B. 一般", point: 10),
        Answer(value: "C. あまり良くない",  point: 5),
        Answer(value: "D. 非常に悪い")
    ]
    static var answerB: [Answer] = [
        Answer(value: "A. 運動を通じて", point: 5),
        Answer(value: "B. 瞑想やリラックスを通じて", point: 5),
        Answer(value: "C. 友達や家族と話すことで", point: 5),
        Answer(value: "D. 管理方法がわからない")
    ]
    static var answerC: [Answer] = [
        Answer(value: "A. とても自信がある", point: 15),
        Answer(value: "B. 一般的に自信がある", point: 10),
        Answer(value: "C. 時々自信がない", point: 5),
        Answer(value: "D. 全く自信がない")
    ]
    static var answerD: [Answer] = [
        Answer(value: "A. とても良い、たくさんの友達がいる", point: 15),
        Answer(value: "B. 一般的、いくつかの友達がいる", point: 10),
        Answer(value: "C. あまり良くない、友達が少ない", point: 5),
        Answer(value: "D. とても悪い、ほとんど友達がいない")
    ]
    
    static func resetPoints() {
        for index in answerA.indices {
            answerA[index].point = 0
        }
    }
}
