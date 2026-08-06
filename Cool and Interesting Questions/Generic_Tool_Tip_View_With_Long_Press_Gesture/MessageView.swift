//
//  MessageView.swift
//  Cool and Interesting Questions
//
//  Created by jyotirmoy_halder on 6/8/26.
//

import SwiftUI

struct MessageView: View {
    let text: String
    
    var body: some View {
        Text(text)
            .font(.headline)
            .fontWeight(.bold)
            .foregroundStyle(.white)
            .padding()
            .background(Color.cyan.clipShape(RoundedRectangle(cornerRadius: 5)))
            .shadow(radius: 10)
    }
}

#Preview {
    MessageView(text: "Image of lightening")
}
