//
//  MyImageView.swift
//  Cool and Interesting Questions
//
//  Created by jyotirmoy_halder on 5/8/26.
//

// imgPurpleLightening

import SwiftUI

struct MyImageView: View {
    let imageName: String
    
    var body: some View {
        Image(imageName)
            .resizable()
            .scaledToFit()
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .shadow(radius: 5)
            .blur(radius: 20)
    }
}

#Preview {
    MyImageView(imageName: "imgPurpleLightening")
        .padding()
}
