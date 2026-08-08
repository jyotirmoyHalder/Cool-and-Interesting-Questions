//
//  SomeViewForCheckingAlignmentModifier.swift
//  Cool and Interesting Questions
//
//  Created by jyotirmoy_halder on 8/8/26.
//

import SwiftUI

struct SomeViewForCheckingAlignmentModifier: View {
    var body: some View {
        VStack {
            Text("LEFT")
                .left()
            Text("CENTER")
                .center()
            Text("RIGHT")
                .right()
        }
        .font(.largeTitle)
        .bold()
    }
}

#Preview {
    SomeViewForCheckingAlignmentModifier()
}
