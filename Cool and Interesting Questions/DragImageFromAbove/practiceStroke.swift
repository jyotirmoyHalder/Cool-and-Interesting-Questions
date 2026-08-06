//
//  practiceStroke.swift
//  Cool and Interesting Questions
//
//  Created by jyotirmoy_halder on 5/8/26.
//

import SwiftUI

struct practiceStroke: View {
    @State private var phase = 0.0
    
    var body: some View {
        Path { path in
            path.move(to: CGPoint(x: 50, y: 50))
            path.addLine(to: CGPoint(x: 250, y: 250))
            path.addLine(to: CGPoint(x: 250, y: 150))
        }
        .stroke(
            .blue,
            style: StrokeStyle(
                lineWidth: 10,
                lineCap: .round,
                lineJoin: .round,
                dash: [10, 20],
                dashPhase: phase
            )
        )
        Circle()
            .stroke(
                LinearGradient(
                    colors: [.blue, .red, .black, .purple],
                            startPoint: .leading,
                            endPoint: .trailing
                        ),
                style: StrokeStyle(
                    lineWidth: 5,
                    lineCap: .round,
                    lineJoin: .round,
                    miterLimit: 10,
                    dash: [10, 10],
                    dashPhase: phase
                )
            )
        
        Button("Increase") {
            phase += 1
        }
    }
}

#Preview {
    practiceStroke()
}
