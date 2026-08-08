//
//  ModifiedContentView.swift
//  Cool and Interesting Questions
//
//  Created by jyotirmoy_halder on 8/8/26.
//

import SwiftUI

struct BackgroundShapeModifier<S>: ViewModifier where S: Shape {
    var color: Color
    var shape: S
    
    func body(content: Content) -> some View {
        content
            .padding()
            .frame(maxWidth: .infinity)
            .background(color)
            .clipShape(shape)
    }
}

extension View {
    func backgroundShape<S: Shape>(color: Color, shape: S) -> some View {
        self
            .modifier(
                BackgroundShapeModifier(
                    color: color,
                    shape: shape
                )
            )
    }
}

struct ModifiedContentView: View {
    var body: some View {
        VStack {
            Text("Hello")
                .backgroundShape(color: .blue, shape: .rect(cornerRadius: 5))
            
            Text("Hello")
                .backgroundShape(
                    color: .purple,
                    shape: UnevenRoundedRectangle(
                        topLeadingRadius: 0,
                        bottomLeadingRadius: 30,
                        bottomTrailingRadius: 0,
                        topTrailingRadius: 30,
                        style: .circular
                    )
                )
            
            Text("Hello")
                .backgroundShape(color: .red, shape: Circle())
        }
        .padding()
        .fontWeight(.bold)
    }
}

#Preview {
    ModifiedContentView()
}
