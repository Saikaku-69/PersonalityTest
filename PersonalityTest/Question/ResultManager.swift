//
//  ResultManager.swift
//  PersonalityTest
//
//  Created by cmStudent on 2024/11/20.
//

import Foundation

class ResultManager:ObservableObject {
    static let shared = ResultManager()
    
    @Published var point:Int = 0
    
    @Published var showResult:Bool = false
    
}
