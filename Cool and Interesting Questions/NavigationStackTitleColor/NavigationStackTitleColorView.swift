//
//  NavigationStackTitleColorView.swift
//  Cool and Interesting Questions
//
//  Created by jyotirmoy_halder on 5/8/26.
//

import SwiftUI

struct NavigationStackTitleColorView: View {
    init() {
        UINavigationBar
            .appearance()
            .largeTitleTextAttributes = [
                .foregroundColor: UIColor.red,
                .font: UIFont.boldSystemFont(ofSize: 40)
            ]
    }
    var body: some View {
        NavigationStack {
            NavigationLink {
                ZStack {
                    Color.gray.opacity(0.3)
                        .ignoresSafeArea()
                    Text("New View")
                        .font(.largeTitle)
                }
                .navigationTitle("Inside")
            } label: {
                VStack {
                    Image(systemName: "globe")
                        .imageScale(.large)
                        .foregroundStyle(.tint)
                    Text("Hello, World")
                }
            }
            .navigationTitle("My Title")
            .navigationBarTitleDisplayMode(.large)
        }
    }
}

#Preview {
    NavigationStackTitleColorView()
}
