//
//  ContentView.swift
//  ex07
//
//  Created by 김수비 on 2023/10/11.
//

import SwiftUI

struct ContentView: View {
    @State private var time : String = ""
    @State private var pay : String = ""
    var body: some View{
        HStack{
            VStack {
                TextField("근무 시간 입력", text: $time)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            } // VStack
            
            Button(action: ButtonPressed, label: {Text("시급 계산")})
                .foregroundColor(Color.white)
        } // HStack
        .padding(100)
        .background(Color.pink)
        
        Text("\(pay)")
    }

    func ButtonPressed() {
        let a = Double (time)!
        
        if a > 8
        {
            pay = "총 급여는 \(80000 + (a-8)*15000)원 입니다."
        }
        else
        {
            pay = "총 급여는 \(10000 * a)원 입니다."
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
