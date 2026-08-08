//
//  BoxTextView.swift
//  Cool and Interesting Questions
//
//  Created by jyotirmoy_halder on 7/8/26.
//

import SwiftUI

struct BoxTextView: View {
    let color: Color
    let value: Double
    let text: String
    let dim: CGFloat?
    let valueFont: Font
    let textFont: Font
    
    var formattedValue: String {
        // TODO: Implement
        let valueNew = String(format: "%.1f", value)
        
        return valueNew.hasSuffix(".0") ? String(valueNew.dropLast(2)) : valueNew
    }
    
    init(color: Color, value: Double, text: String, dim: CGFloat? = .infinity, valueFont: Font = .headline, textFont: Font = .subheadline) {
        self.color = color
        self.value = value
        self.text = text
        self.dim = dim
        self.valueFont = valueFont
        self.textFont = textFont
    }
    var body: some View {
        VStack {
            Text(formattedValue)
                .font(valueFont)
                .bold()
            
            Text(text)
                .font(textFont)
                .multilineTextAlignment(.center)
        }
        .frame(maxWidth: dim, maxHeight: dim)
        .minimumScaleFactor(0.1)
        .padding()
        .background {
            RoundedRectangle(cornerRadius: 20)
                .fill(color)
//                .aspectRatio(contentMode: .fill)
        }
    }
}

#Preview {
    BoxTextView(color: .white, value: 364.0, text: "some Value")
}
