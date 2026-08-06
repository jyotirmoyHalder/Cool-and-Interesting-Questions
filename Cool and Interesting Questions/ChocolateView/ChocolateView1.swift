//
//  ChocolateView1.swift
//  Cool and Interesting Questions
//
//  Created by jyotirmoy_halder on 6/8/26.
//

import SwiftUI

struct ChocolateView1: View {
    let text: String = "Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate Chocolate"
    let n = 300
    @State private var angle = 0.0
    let spacing = 20.0
    @State private var opacity = 0.0
    
    var body: some View {
        ZStack {
            LinearGradient(colors: [.blue, .purple], startPoint: .topLeading, endPoint: .bottomTrailing)
                .opacity(0.7)
                .ignoresSafeArea()
                .mask {
                    ChocolateView2(text: "Chocolate", wordsPerLine: 100, rows: 100, spacing: 20, angle: angle, font: .caption)
//                        .opacity(opacity)
                }
            
        }
        .onAppear {
            withAnimation(.linear(duration: 1)) {
                angle = -50.0
                opacity = 0.7
            }
        }
    }
}

#Preview {
    ChocolateView1()
}
