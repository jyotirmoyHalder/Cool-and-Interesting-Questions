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
            
            CustomLabelView()
        }
        .padding()
    }
}

//struct CustomLabel: View {
//    let text: String
//    let systemName: String
//    var body: some View {
//        HStack {
//            Text(text)
//            Image(systemName: systemName)
//        }
//    }
//}

#Preview {
    CustomLabelView()
}
