//
//  TextIndicatorView.swift
//  Cool and Interesting Questions
//
//  Created by jyotirmoy_halder on 5/8/26.
//

import SwiftUI

struct TextIndicatorView: View {
    
    @State private var percentage: CGFloat = 0.7
    
    var body: some View {
        VStack {
            Text("Gradient Indicator")
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding()
            Spacer()
            IndicatorView(width: 200, height: 30, percentage: percentage, color: .gray)
            Spacer()
            Slider(value: $percentage)
        }
    }
}

#Preview {
    TextIndicatorView()
}
