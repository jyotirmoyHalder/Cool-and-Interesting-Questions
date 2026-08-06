//
//  MyImageViewForToolTip.swift
//  Cool and Interesting Questions
//
//  Created by jyotirmoy_halder on 6/8/26.
//

import SwiftUI

struct MyImageViewForToolTip: View {
    var body: some View {
        Image("imgPurpleLightening")
            .resizable()
            .scaledToFit()
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(radius: 5)
    }
}

#Preview {
    MyImageViewForToolTip()
        .padding()
}
