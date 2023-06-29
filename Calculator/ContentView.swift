//
//  ContentView.swift
//  Calculator
//
//  Created by Kingthed💛💙 💂🏾‍♀️ on 6/28/23.
//

import SwiftUI

struct ContentView: View {
    @State private var firstNumber: String = ""
    @State private var secondNumber: String = ""
    @State private var operation: String = ""
    @State private var result: String = ""
    
    let calculator = Calculator()
    var body: some View {
        VStack(spacing: 20) {
       customTextField(title: "First Number", text: $firstNumber)
            Picker("picker", selection: $operation) {
                Text("+").tag("+")
                Text("-").tag("-")
                Text("*").tag("*")
                Text("/").tag("/")
            }
            .pickerStyle(SegmentedPickerStyle())
            
          customTextField(title: "Second number", text: $secondNumber)
            
            Text(result)
                .font(.title)
                .foregroundColor(.mint)
            
            Button {
                self.result = calculator.calculate(firstNumber: firstNumber, secondNumber: secondNumber, operation: operation)
            } label: {
                Text("Calculate")
            }
            .padding()
            .foregroundColor(.white)
            .background(.blue)
            .cornerRadius(10)

        }
    }
}
class Calculator {
//    var firstnumber:String
//    var secondNumber:String
//    var operation:String
//
//    init(firstnumber:String,secondNumber:String,operation:String){
//        self.firstnumber = firstnumber
//        self.secondNumber = secondNumber
//        self.operation = operation
//    }
    func calculate(firstNumber:String, secondNumber:String, operation: String) -> String {
        let numOne = Int(firstNumber) ?? 0
        let numSec = Int(secondNumber) ?? 0
        
        switch operation {
        case "+":
            return String(numOne + numSec)
        case "-":
            return String(numOne - numSec)
        case "*":
            return String(numOne * numSec)
        case "/":
            return String(numOne / numSec)
        default:
            return "Invalid"
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
