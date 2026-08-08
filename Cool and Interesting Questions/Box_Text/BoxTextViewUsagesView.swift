//
//  BoxTextViewUsagesView.swift
//  Cool and Interesting Questions
//
//  Created by jyotirmoy_halder on 7/8/26.
//

import SwiftUI

struct BoxTextViewUsagesView: View {
    var body: some View {
        ZStack {
            LinearGradient(
                colors: [.white.opacity(0.6), .indigo.opacity(0.7), .gray],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
            .ignoresSafeArea()
            
            HStack {
                BoxTextView(
                    color: Color(red: 241/255, green: 249/255, blue: 247/255),
                    value: 364,
                    text: "average length",
                    dim: 175
                )
                BoxTextView(
                    color: Color(red: 241/255, green: 249/255, blue: 247/255),
                    value: 13.2657,
                    text: "average days to finish",
                    dim: 175
                )
            }
            .padding()
        }
    }
}

#Preview {
    BoxTextViewUsagesView()
}
