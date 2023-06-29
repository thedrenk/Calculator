//
//  customTextField.swift
//  Calculator
//
//  Created by Kingthed💛💙 💂🏾‍♀️ on 6/29/23.
//

import SwiftUI

struct customTextField: View {
    var title:String
    @Binding var text:String
    var body: some View {
        VStack {
            TextField(title, text: $text)
                .keyboardType(.decimalPad)
                .padding()
                .background(Color(red: 0.9, green: 0.9, blue: 0.9))
                .cornerRadius(10)
            
        }
        .padding(1)
    }
}


