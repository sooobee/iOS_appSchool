//
//  ContentView.swift
//  ObjC2
//
//  Created by 김수비 on 11/10/23.
//

#import; "ViewController.h"
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
