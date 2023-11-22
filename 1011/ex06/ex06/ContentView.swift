//
//  ContentView.swift
//  ex06
//
//  Created by 김수비 on 2023/10/11.
//

import SwiftUI

struct ContentView: View {
    @State private var input: String = ""
    @State private var result1: String = ""
    @State private var result2: String = ""
    @State private var result3: String = ""
    
    var body: some View {
        VStack {
            HStack{
                TextField("초 입력: ", text: $input)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                Button(action: buttonPressed, label: {Text("Send")})
                    .foregroundColor(.white)
            }
        }
        .padding(100)
        .background(Color.pink)
        
        Text("\(result1)")
        Text("\(result2)")
        Text("\(result3)")
        
    }
    
    
    func buttonPressed(){
        let a = Int(input)!
        
    result1 = "\((a/60)/60) 시"
    result2 = "\((a/60)%60) 분"
    result3 = "\(a%60) 초"
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
