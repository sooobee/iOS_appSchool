//
//  ContentView.swift
//  ex09
//
//  Created by 김수비 on 2023/10/12.
//

import SwiftUI

struct ContentView: View {
    @State var num1: String = ""
    @State var result: String = ""
    
    var body: some View {
        VStack {
            TextField("정수를 입력하세요: ", text: $num1)
            
            Button(action: check, label: {Text("판별")})
                .foregroundColor(.white)
        }
        .padding(100)
        .background(Color.orange)
        
        Text(result)
    }
    
    func check(){
        let a = Int (num1)!
        
        if a % 2 == 0{
            result = "\(a)은 짝수입니다."}
        else{
            result = "\(a)는 홀수입니다."}
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

