//
//  ContentView.swift
//  uiEx03
//
//  Created by 김수비 on 2023/10/16.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Button("BUTTON"){
            }
            .frame(width: geometry.size.width)
            .padding(5)
            .foregroundColor(Color.white)
            .background(Color.indigo)
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
