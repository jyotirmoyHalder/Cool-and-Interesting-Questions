//
//  CustomLabelView.swift
//  Cool and Interesting Questions
//
//  Created by jyotirmoy_halder on 6/8/26.
//

import SwiftUI

struct CustomLabelView: View {
    
    var body: some View {
        VStack(spacing: 50) {
            Label("Custom Label", systemImage: "globe")
                .labelStyle(RightLabelStyle())
            
            Label("Fade In Label", systemImage: "globe")
                .labelStyle(FadeInLabelStyle())
            
            Label("Wide Label", systemImage: "globe")
                .labelStyle(WideLabelStyle())
            
            Label("Wide Label", systemImage: "globe")
                .labelStyle(
                    NewLabelStyle(
                        fgColor: .black,
                        color1: .green.opacity(0.3),
                        color2: .cyan.opacity(0.7),
                        cornerRadius: 10
                    )
                )
            
            CustomLabel(text: "Custom Label", systemName: "globe")
        }
        .padding()
    }
}

struct FadeInLabelStyle: LabelStyle {
    @State private var opacity: CGFloat = 0.0
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
        .foregroundStyle(.white)
        .padding()
        .background {
            LinearGradient(
                colors: [
                    .purple,
                    .blue
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        }
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .opacity(opacity)
        .onAppear {
            withAnimation {
                opacity = 1
            }
        }
    }
}

struct RightLabelStyle: LabelStyle {
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
        .foregroundStyle(.white)
        .padding()
        .background {
            LinearGradient(
                colors: [
                    .purple,
                    .blue
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        }
        .clipShape(RoundedRectangle(cornerRadius: 10))
        
    }
}

struct WideLabelStyle: LabelStyle {
    @State private var opacity: CGFloat = 0.0
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            Spacer()
            configuration.icon
        }
        .foregroundStyle(.white)
        .padding()
        .background {
            LinearGradient(
                colors: [
                    .purple,
                    .blue
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        }
        .clipShape(RoundedRectangle(cornerRadius: 10))
        .opacity(opacity)
        .onAppear {
            withAnimation {
                opacity = 1
            }
        }
    }
}

struct NewLabelStyle: LabelStyle {
    let fgColor: Color
    let color1: Color
    let color2: Color
    let cornerRadius: CGFloat
    @State private var opacity: CGFloat = 0.0
    
    func makeBody(configuration: Configuration) -> some View {
        HStack {
            configuration.title
            configuration.icon
        }
        .foregroundStyle(fgColor)
        .padding()
        .background {
            LinearGradient(
                colors: [
                    color1,
                    color2
                ],
                startPoint: .topLeading,
                endPoint: .bottomTrailing
            )
        }
        .clipShape(RoundedRectangle(cornerRadius: cornerRadius))
        .opacity(opacity)
        .onAppear {
            withAnimation {
                opacity = 1
            }
        }
    }
}


struct CustomLabel: View {
    let text: String
    let systemName: String
    var body: some View {
        HStack {
            Text(text)
            Image(systemName: systemName)
        }
    }
}

#Preview {
    CustomLabelView()
}
