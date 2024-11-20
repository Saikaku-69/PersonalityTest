//
//  ResultView.swift
//  PersonalityTest
//
//  Created by cmStudent on 2024/11/20.
//

import SwiftUI

struct ResultView: View {
    @ObservedObject var resultManager = ResultManager.shared
    
    var body: some View {
        VStack(alignment: .leading) {
            
            if let result = resultManager.personalityResult {
                Text("あなたの人格タイプ:")
                    .font(.headline)
                    .padding(.vertical)
                
                Text(result.description)
            }
        }
        .padding(.horizontal)
        .onAppear {
            // 在视图出现时生成个性化类型
            resultManager.generatePersonalityType()
        }
        .onDisappear() {
            resultManager.point = 0
        }
    }
}

#Preview {
    ResultView()
}
