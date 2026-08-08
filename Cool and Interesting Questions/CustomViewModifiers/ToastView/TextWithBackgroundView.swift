//
//  TextWithBackgroundView.swift
//  Cool and Interesting Questions
//
//  Created by jyotirmoy_halder on 8/8/26.
//

import SwiftUI

struct TextWithBackgroundView: View {
    
    let text: String
    let textColor: Color
    let bgColor: Color
    
    init(text: String, textColor: Color = .white, bgColor: Color = .black.opacity(0.8)) {
        self.text = text
        self.textColor = textColor
        self.bgColor = bgColor
    }
    
    var body: some View {
        Text(text)
            .foregroundStyle(textColor)
            .padding(.horizontal, 20)
            .padding(.vertical, 10)
            .background {
                Capsule()
                    .fill(bgColor)
            }
            .shadow(color: bgColor, radius: 5, x: 0, y: 5)
    }
}

#Preview {
    TextWithBackgroundView(text: "My Text")
}
