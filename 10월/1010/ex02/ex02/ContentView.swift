//
//  ContentView.swift
//  ex02
//
//  Created by 김수비 on 2023/10/10.
//

import SwiftUI

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ex02()
    }
}

struct ex02: View {
    @State private var num1: String = "" // 귤 개수
    @State private var num2: String = "" // 박스 개수
    @State private var result1: String = ""
    @State private var result2: String = ""
    
    var body: some View {
        VStack(alignment: .center) {
            HStack(alignment: .center) {
                VStack {
                    TextField("귤 개수?", text: $num1)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                    
                    TextField("한 박스 개수?", text: $num2)
                        .textFieldStyle(RoundedBorderTextFieldStyle())
                } // VStack
                
                Button(action: buttonPressed, label: { Text("Send")})
                    .foregroundColor(.white)
               
            } // HStack
            .padding(100)
            .background(Color.pink)
            
            
            Text("\(result1)")
            Text("\(result2)")
        }// VStack
    }
    func buttonPressed() {
        let a = Int (num1)!
        let b = Int (num2)!
        
        result1 = "귤 박스의 수? \(a / b)"
        result2 = "박스에 담고 있는 남은 귤 수? \(a % b)"
    }
}
    
    
