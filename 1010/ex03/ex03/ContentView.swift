//
//  ContentView.swift
//  ex03
//
//  Created by 김수비 on 2023/10/11.
//

import SwiftUI

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ContentView: View {

    @State private var num1: String = ""
    @State private var result: String = ""

    var body: some View {
        if self.num1 == nil {
            print("nil num1")
        }

        if self.num1.isEmpty {
            print("empty num1")
        }

        return VStack {
            Text("백의 자리 이하를 버리는 앱")
            TextField("num1", text: $num1)
                .textFieldStyle(RoundedBorderTextFieldStyle())

            Button(action: buttonPressed, label: { Text("Send")})
                .foregroundColor(.white)
                .disabled( self.num1.isEmpty )

            Text("\(result)")

        }
        .padding(10)
        .background(Color.pink)
    }

    func buttonPressed() {
        let num = Int(num1)!
        result = "\(num / 100 * 100)"
    }
}
