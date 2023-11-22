//
//  ContentView.swift
//  UiEx01
//
//  Created by 김수비 on 2023/10/16.
//

import SwiftUI

struct ContentView: View {
    @State private var text: String = "호,호잇~!"
    var body: some View {
        VStack {
            Image("jjanggu")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .infinity, height: .infinity)
                .cornerRadius(10)
            
            HStack{
                Link(destination: /*@START_MENU_TOKEN@*/URL(string: "https://www.apple.com")!/*@END_MENU_TOKEN@*/, label: {
                                   Text("Home")
                                   Image(systemName: "house.circle")
                               })
                               .padding(5)
                               .foregroundColor(Color.white)
                               .background(Color.indigo)
                               .cornerRadius(5)
                
                Spacer()
                Text(text)
                    .multilineTextAlignment(.center)
                Spacer()
                Button("CALL"){
                    let numberString = "01083762111"
                    let telephone = "tel: //"
                    let formattedString = telephone + numberString
                    guard let url = URL(string: formattedString) else {return}
                    UIApplication.shared.open(url)
                } // Button
                .padding(5)
                .foregroundColor(Color.white)
                .background(Color.indigo)
                .cornerRadius(5)
                
            } // HStack
            .padding(5)
            .cornerRadius(5)
            
            Spacer()
            HStack{
                TextField("Enter", text: $text)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .foregroundColor(Color.black)
                Button("HELLO BUTTON"){}
                    .padding(5)
                    .foregroundColor(Color.white)
                    .background(Color.indigo)
                    .cornerRadius(5)
            }
            .padding(5)
            .foregroundColor(Color.white)
            .background(Color.pink)
        } // VStack
        .padding()
        .background(Color.pink)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
