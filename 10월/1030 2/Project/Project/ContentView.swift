//
//  ContentView.swift
//  1030
//
//  Created by 김수비 on 2023/10/30.
//

import SwiftUI

struct UserName: Encodable, Decodable
{
    var firstName: String
    var secondName: String
}

struct AppStorageView: View {
    
    @AppStorage("mytext") var editorText: String = "Sample Text"
    @AppStorage("username") var namestore: Data = Data()
    
    @State var username = UserName(firstName: "park", secondName: "jun")
    
    init() {
        let decorder = JSONDecoder()
        
        if let name = try? decorder.decode(UserName.self, from: namestore){
            username = name
            editorText = "\(name.firstName), \(name.secondName)"
        }
    }
    
    var body: some View {
        VStack {
            HStack{
                TextField("firstname", text: $username.firstName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                
                TextField("secondname", text: $username.secondName)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
            }
            .padding()
    
            Button("username save"){
                let encoder = JSONEncoder()
                
                if let data = try? encoder.encode(username){
                    namestore = data
                    editorText = data.base64EncodedString()
                }
            }
            
            TextEditor(text: $editorText)
                .padding()
                .font(.largeTitle)
        }
        .background(Color.gray)
        Text("Sample Text")
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        AppStorageView()
    }
}
