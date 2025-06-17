//
//  Placeholder.swift
//  Africa Animal
//
//  Created by Amit Sharma on 6/17/25.
//

import SwiftUI

struct CustomTextField: View {
    var placeholder: String
    @Binding var text: String
    var isSecure: Bool = false

    var body: some View {
        ZStack(alignment: .leading) {
            if text.isEmpty {
                Text(placeholder)
                    .foregroundColor(Color.placeholder)
                    .padding(.horizontal, 12)
            }

            if isSecure {
                SecureField("", text: $text)
                    .padding()
                    .foregroundColor(.white)
            } else {
                TextField("", text: $text)
                    .padding()
                    .foregroundColor(.white)
            }
        }
        .background(Color.textFieldbg)
        .cornerRadius(8)
        .overlay(RoundedRectangle(cornerRadius: 8).stroke(Color.filledBorder))
    }
}
