//
//  AlignmentModifiers.swift
//  Cool and Interesting Questions
//
//  Created by jyotirmoy_halder on 8/8/26.
//

import SwiftUI

struct LeftAligned: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}
struct centerAligned: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, alignment: .center)
    }
}
struct rightAligned: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(maxWidth: .infinity, alignment: .trailing)
    }
}



extension View {
    func left() -> some View {
        self.modifier(LeftAligned())
    }
    
    func center() -> some View {
        self.modifier(centerAligned())
    }
    
    func right() -> some View {
        self.modifier(rightAligned())
    }
}
