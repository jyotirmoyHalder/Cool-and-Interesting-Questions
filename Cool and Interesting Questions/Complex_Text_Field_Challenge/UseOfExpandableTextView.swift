//
//  UseOfExpandableTextView.swift
//  Cool and Interesting Questions
//
//  Created by jyotirmoy_halder on 7/8/26.
//

import SwiftUI

struct UseOfExpandableTextView: View {
    @State private var text = " "
    var body: some View {
        ExpandableTextField(
            value: $text,
            placeholder: "Type something...",
            lineLimit: 10
        )
        .textFieldStyle(.roundedBorder)
        .padding()
    }
}

#Preview {
    UseOfExpandableTextView()
}
