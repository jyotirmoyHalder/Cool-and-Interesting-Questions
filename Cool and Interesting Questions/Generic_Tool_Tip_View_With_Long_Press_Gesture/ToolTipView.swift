//
//  ToolTipView.swift
//  Cool and Interesting Questions
//
//  Created by jyotirmoy_halder on 6/8/26.
//

// imgPurpleLightening

import SwiftUI

struct ToolTipView<Content: View, Message: View>: View {
    // Two input views - Generics and ViewBuilder
    let content: Content
    let message: Message
    
    init(@ViewBuilder content: @escaping () -> Content, @ViewBuilder message: @escaping () -> Message) {
        self.content = content()
        self.message = message()
    }
    
    @State var showToolTip = false
    @GestureState var press = false
    var longPress: some Gesture {
        LongPressGesture(minimumDuration: 0.5)
            .updating($press) { currentState, gestureState, transaction in
                gestureState = currentState
            }
            .onEnded { finished in
                showToolTip.toggle()
            }
    }
    
    var body: some View {
        ZStack {
            content
                .gesture(longPress)
            message
                .opacity(press ? 1.0 : 0.0)
                .animation(
                    .spring(response: 0.4, dampingFraction: 0.6),
                    value: press
                )
        }
    }
}

#Preview {
    ToolTipView(
        content: {
            MyImageViewForToolTip()
        },
        message: {
            MessageView(text: "Image of lightening")
        }
    )
    .padding()
}
