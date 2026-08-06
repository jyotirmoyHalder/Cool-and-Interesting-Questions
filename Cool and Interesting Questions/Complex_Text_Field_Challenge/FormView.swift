//
//  FormView.swift
//  Cool and Interesting Questions
//
//  Created by jyotirmoy_halder on 6/8/26.
//

import SwiftUI

struct FormView: View {
    @State private var email = ""
    
    var title: String {
        email.isEmpty ? "Enter an email" : "Current email"
    }
    var color: Color {
        email.isEmpty ? .red : .blue
    }
    
    var body: some View {
        VStack {
            Text(title)
                .foregroundStyle(color)
                .font(.largeTitle)
                .fontWeight(.semibold)
                .padding()
            Text(email)
                .bold()
            
            Spacer()
            
            EmailTextFieldView(email: $email)
        }
    }
}

#Preview {
    FormView()
}
