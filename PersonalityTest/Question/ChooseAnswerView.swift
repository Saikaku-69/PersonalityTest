//
//  ChooseAnswerView.swift
//  PersonalityTest
//
//  Created by cmStudent on 2024/11/19.
//

import SwiftUI

struct QuestionManager {
    let index: String
    let tema: String
    let question: String
}

struct ChooseAnswerView: View {
    
    let questionClass = ["問題A","問題B","問題C","問題D"]
    
    @State private var selectedQues:String = "問題A"
    
    let questions: [QuestionManager] = [
        QuestionManager(index: "問題A",tema: "心理健康", question: "あなたのメンタルヘルスの状態はどうですか？"),
        QuestionManager(index: "問題B",tema: "ストレス管理", question: "あなたはストレスをどのように管理していますか？"),
        QuestionManager(index: "問題C",tema: "自己評価", question: "自分自身をどう評価しますか？"),
        QuestionManager(index: "問題D",tema: "人間関係", question: "あなたの人間関係はどのようですか？")
    ]
    
    
    var body: some View {
        
        VStack {
            Picker("",selection: $selectedQues) {
                
                ForEach(questionClass,id: \.self) { item  in
                    
                    Text(item).tag(item)
                    
                }
            }
            .pickerStyle(SegmentedPickerStyle())
            
            if let selectedQuestion = questions.first(where: {$0.index == selectedQues}) {
                Text("テーマ：\(selectedQuestion.tema)")
                    .font(.headline)
                    .padding()
                
                HStack {
                    Text("質問：")
                        .font(.headline)
                    Spacer()
                }
                
                Text("\(selectedQuestion.question)")
                    .font(.headline)
                
                
                Spacer()
                //答え選択
                ForEach (AnswerA.answerA, id: \.self) { item in
                    HStack {
                        Text(item.value)
                    }
                    .frame(width:200,alignment: .leading)
                    .padding()
                    .onTapGesture {
                        //
                    }
                }
                .border(.gray)
                
            }
        }
        .padding()
        
        .frame(maxWidth: .infinity)
        .frame(height:500)
    }
}

#Preview {
    ChooseAnswerView()
}
