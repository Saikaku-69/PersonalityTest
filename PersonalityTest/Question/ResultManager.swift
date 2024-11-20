//
//  ResultManager.swift
//  PersonalityTest
//
//  Created by cmStudent on 2024/11/20.
//

import Foundation

struct PersonalityResult {
    let description: String
}

class ResultManager:ObservableObject {
    static let shared = ResultManager()
    
    @Published var point:Int = 0
    
    @Published var showResult:Bool = false
    @Published var isDisable:Bool = false
    
    @Published var personalityResult: PersonalityResult?
    
    func generatePersonalityType() {
        personalityResult = generatePersonalityType(totalPoints: point)
        showResult = true
    }
    
    private func generatePersonalityType(totalPoints: Int) -> PersonalityResult {
        switch totalPoints {
        case 0..<20:
            return PersonalityResult(description: "あなたは内向的で、他人との交流を避ける傾向があります。自分の時間を大切にし、静かな環境を好みます。")
        case 20..<40:
            return PersonalityResult(description: "あなたはバランスの取れた性格で、社交的でありながら、一人の時間も大切にします。友達と過ごすことが好きですが、時には自分だけの時間を必要とします。")
        case 40..<60:
            return PersonalityResult(description: "あなたは非常に社交的で、人との交流を楽しみます。新しい経験や挑戦を求め、周囲の人々に影響を与える存在です。")
        default:
            return PersonalityResult(description: "あなたは非常に外向的で、リーダーシップの資質を持っています。他人を引きつける魅力があり、常に新しい冒険を求めています。")
        }
    }
}
