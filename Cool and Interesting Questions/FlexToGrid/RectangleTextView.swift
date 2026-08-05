//
//  RectangleTextView.swift
//  Cool and Interesting Questions
//
//  Created by jyotirmoy_halder on 5/8/26.
//

import SwiftUI

struct RectangleTextView: View {
    let color: Color
    let text: String
    
    var body: some View {
        ZStack {
            Rectangle()
                .fill(color)
            Text(text)
                .font(.title)
                .fontWeight(.semibold)
        }
        .clipShape(RoundedRectangle(cornerRadius: 10))
    }
}
