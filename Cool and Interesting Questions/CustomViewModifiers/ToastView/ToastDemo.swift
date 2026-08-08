//
//  ToastDemo.swift
//  Cool and Interesting Questions
//
//  Created by jyotirmoy_halder on 8/8/26.
//

import SwiftUI

struct ToastDemo: View {
    @State private var showToast = true
    
    var showToastPromt: String {
        showToast ? "Show Toast" : "Hide toast"
    }
    
    let text: String
    
    var body: some View {
        ZStack {
            
            Button {
                withAnimation(.spring) {
                    showToast.toggle()
                }
            } label: {
                Text(showToastPromt)
            }
            .toast(
                text: text,
                showToast: $showToast
            )
//            .modifier(ToastModifier(text: text, showToast: $showToast))
                        
//            ToastView(text: text, showToast: $showToast)
        }
    }
}


#Preview {
    ToastDemo(text: "Toast is Delicious")
}
