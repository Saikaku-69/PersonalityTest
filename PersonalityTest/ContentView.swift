//
//  ContentView.swift
//  PersonalityTest
//
//  Created by cmStudent on 2024/11/19.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedItem: String = "A"
    
    let tema = ["A","B","C","D"]
    
    
    var body: some View {
        Picker("", selection: $selectedItem) {
            ForEach(tema,id: \.self) { item in
                Text(item).tag(item)
            }
        }
        .pickerStyle(SegmentedPickerStyle())
    }
}

#Preview {
    ContentView()
}
