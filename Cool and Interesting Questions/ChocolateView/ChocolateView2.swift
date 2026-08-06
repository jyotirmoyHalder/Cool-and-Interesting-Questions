//
//  ChocolateView2.swift
//  Cool and Interesting Questions
//
//  Created by jyotirmoy_halder on 6/8/26.
//

import SwiftUI

struct ChocolateView2: View {
    let text: String
    let wordsPerLine: Int
    let rows: Int
    let spacing: CGFloat?
    let angle: CGFloat
    let font: Font
    
    var repeatedText: String {
        String(repeating: "\(text)     ", count: wordsPerLine)
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: spacing) {
                ForEach(0..<rows, id: \.self) { _ in
                    Text(repeatedText)
                        .fixedSize(horizontal: true, vertical: false)
                        .font(font)
                }
            }
            .rotationEffect(Angle(degrees: angle))
            .frame(width: geometry.size.width, height: geometry.size.height)
        }
    }
}

#Preview {
    ZStack {
        LinearGradient(colors: [.blue, .red], startPoint: .topLeading, endPoint: .bottomTrailing)
            .opacity(0.7)
            .ignoresSafeArea()
        
        ChocolateView2(text: "Chocolate", wordsPerLine: 30, rows: 2, spacing: 20, angle: -50.0, font: .caption)
    }
}
