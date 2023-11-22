//
//  ContentView.swift
//  ex10
//
//  Created by 김수비 on 2023/10/12.
//

import SwiftUI

struct ContentView: View {
    @State var num1: String = ""
    @State var num2: String = ""
    @State var result: String = ""
    
    var body: some View {
        VStack {
            TextField("첫 번째 정수 입력: " , text: $num1)
            TextField("두 번째 정수 입력: " , text: $num2)
            
            Button(action: cha, label: {Text("두 수의 차")})
         
            Text("\(result)")
        }
        .padding(100)
    }
    
    func cha(){
        let a = Int(num1)!
        let b = Int(num2)!
        
        if a > b {
            result = "두 수의 차 : \(a-b) "
        }
        else {
            result = "두 수의 차 : \(b-a) "
        }
    }

}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
