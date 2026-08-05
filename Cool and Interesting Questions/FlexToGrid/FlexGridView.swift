//
//  FlexGridView.swift
//  Cool and Interesting Questions
//
//  Created by jyotirmoy_halder on 5/8/26.
//

import SwiftUI

struct FlexGridView: View {
    var body: some View {
        ZStack {
            Color.cyan.opacity(0.3).ignoresSafeArea()
            Grid(verticalSpacing: 0) {
                GridRow {
                    MyImageView(imageName: "imgPurpleLightening")
                        .frame(maxHeight: .greatestFiniteMagnitude)
                }
                Grid(verticalSpacing: 0) {
                    GridRow {
                        RectangleTextView(color: .red, text: "25 %")
                    }
                    GridRow {
                        RectangleTextView(color: .green, text: "25 %")
                    }
                }
            }
            .padding(.horizontal)
        }
    }
}


#Preview {
    FlexGridView()
}
