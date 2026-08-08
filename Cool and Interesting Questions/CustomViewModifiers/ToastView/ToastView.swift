//
//  ToastView.swift
//  Cool and Interesting Questions
//
//  Created by jyotirmoy_halder on 8/8/26.
//


import SwiftUI

struct ToastView: View {
    let text: String
    @Binding var showToast: Bool
    
    var body: some View {
        TextWithBackgroundView(text: text)
            .offset(y: showToast ? 0 : 100)
            .frame(maxHeight: .infinity, alignment: .bottom)
    }
}


struct ToastModifier: ViewModifier {
    let text: String
    @Binding var showToast: Bool
    
    func body(content: Content) -> some View {
        ZStack {
            content
            ToastView(text: text, showToast: $showToast)
        }
    }
}

extension View {
    func toast(text: String, showToast: Binding<Bool>) -> some View {
        self
            .modifier(ToastModifier(text: text, showToast: showToast))
    }
}

#Preview {
    ToastView(
        text: "Hello Toast",
        showToast: .constant(true)
    )
}
