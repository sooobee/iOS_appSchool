//
//  ContentView.swift
//  ex01
//
//  Created by 김수비 on 2023/10/10.
//

import SwiftUI

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ContentView: View {
    @State private var num1: String = ""
    @State private var num2: String = ""
    @State private var result: String = ""
    
    var body: some View {
        VStack {
            Text("두 수를 입력받아 사칙연산의 답을 출력하는 앱")
            TextField("num1", text: $num1)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField("num2", text: $num2)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Button(action: buttonPressed, label: {Text("Send")})
                .foregroundColor(.white)
            
            Text("\(result)")
            
        } // VStack
        .padding(10)
        .background(Color.pink)
    }
    
    func buttonPressed(){
        let a = Int(num1)!
        let b = Int(num2)!
        result = "\(a+b), \(a-b), \(a*b), \(a/b), \(Double(a) / (Double(b)))"
    } // ButtonPressed
}

