//
//  ContentView.swift
//  demoProject1
//
//  Created by 김수비 on 2023/10/11.
//

import SwiftUI

struct ContentView: View {
    @State private var msg = ""
    
    var body: some View {
        VStack {
            Image(systemName:
                    "square.and.arrow.up")
                .imageScale(.large)
                .foregroundColor(.blue)
            Text("Hello, world!")
                .foregroundColor(Color.white)
            
            HStack {
                TextField("Input", text: $msg)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                Button(action: btnPressed, label: {
                    Text("Send").foregroundColor(.white)
                })
            }
            // 하위 뷰
            MyStackView()
                .font(.largeTitle)
        }
        .padding(100)
        .background(.pink)
    }
    
    // 입력, 반환값 없음
    func btnPressed() {
        msg = "hahaha"
    }
}

// 하위 뷰
struct MyStackView: View {
    var body: some View{
        HStack{
            Text("name")
            Text("age")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
