//
//  ContentView.swift
//  uiEx02
//
//  Created by 김수비 on 2023/10/16.
//

import SwiftUI

struct ContentView: View {
    @State private var num = 0
    var body: some View {
        VStack {
            Spacer()
            Text(String(num))
            Button("Count"){
                num += 1
            }
            .frame(minWidth:350, maxWidth: .infinity, minHeight: 40, maxHeight: 40)
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
