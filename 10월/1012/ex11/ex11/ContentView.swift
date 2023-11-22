//
//  ContentView.swift
//  ex11
//
//  Created by 김수비 on 2023/10/12.
//

import SwiftUI

struct ContentView: View {
    @State var ball : String = ""
    @State var box : Int
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            
            TextField("농구공의 개수를 입력하세요: ", text: $ball)
            
            Text("필요한 상자의 개수 : \(box)")
        }
        .padding()
    }
    func calc(){
        let a = Int(ball)!
        box = a/5 + 1
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
