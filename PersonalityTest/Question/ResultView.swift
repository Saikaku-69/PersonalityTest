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
        VStack {
            Text("あなたの得点は：\(resultManager.point)")
                .onDisappear() {
                    resultManager.point = 0
                }
        }
    }
}

#Preview {
    ResultView()
}
