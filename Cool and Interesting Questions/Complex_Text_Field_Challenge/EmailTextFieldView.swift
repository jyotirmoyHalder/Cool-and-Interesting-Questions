//
//  EmailTextFieldView.swift
//  Cool and Interesting Questions
//
//  Created by jyotirmoy_halder on 6/8/26.
//

import SwiftUI

struct EmailTextFieldView: View {
    
    @Binding var email: String
    
    var opacity: Double {
        email.isEmpty ? 0.9 : 0
    }
    
    var isValidEmail: Bool {
        // TODO: Implement isVaidEmail
        email.isEmpty || email.isValidEmail()
    }
    
    var body: some View {
        VStack {
            TextField("", text: $email.animation())
                .font(.title2)
                .foregroundStyle(.gray)
                .autocorrectionDisabled()
                .textInputAutocapitalization(.never)
                .keyboardType(.emailAddress)
                .padding()
                .overlay {
                    Label {
                        Text("Enter e-mail address")
                    } icon: {
                        Image(systemName: "envelope.open.fill")
                    }
                    .allowsHitTesting(false)
                    .opacity(opacity)
                    .font(.title2)
                    .foregroundStyle(.gray)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding()
                    .overlay {
                        Capsule()
                            .stroke(Color.gray, lineWidth: 0.5)
                    }
                }
            
            // Valid email ?
            if !isValidEmail {
                Text("Invalid e-mail address")
                    .foregroundStyle(.red)
                    .font(.subheadline)
                    .bold()
            }
        }
        .padding()
    }
}

#Preview {
    EmailTextFieldView(email: .constant("hello@gmail.com"))
}
