//
//  GradientBorderShadowDemo.swift
//  Cool and Interesting Questions
//
//  Created by jyotirmoy_halder on 8/8/26.
//

import SwiftUI

struct GradientBorderShadowDemo: View {
    var body: some View {
        Text("Hello, World!")
            .font(.largeTitle)
            .padding()
            .gradientBorderAndShadow()
    }
}

struct RoundedCornerGradientShadow: ViewModifier {
    let radius: CGFloat
    let gradient: LinearGradient
    let shadowColor: Color
    let shadowRadius: CGFloat
    
    
    func body(content: Content) -> some View {
        content
            .overlay {
                RoundedRectangle(cornerRadius: radius)
                    .stroke(gradient, lineWidth: 4)
            }
            .shadow(color: shadowColor, radius: shadowRadius)
    }
}

extension View {
    func gradientBorderAndShadow(
        gradient: LinearGradient = LinearGradient(
            colors: [
                .red,
                .blue
            ],
            startPoint: .leading,
            endPoint: .trailing
        ),
        borderWidth: CGFloat = 3.0
    ) -> some View {
        self.modifier(
            RoundedCornerGradientShadow(
                radius: 12,
                gradient: gradient,
                shadowColor: .gray.opacity(0.5),
                shadowRadius: 6
            )
        )
    }
}

#Preview {
    GradientBorderShadowDemo()
}
