//
//  naviEx.swift
//  ListEx
//
//  Created by 김수비 on 2023/11/01.
//

import SwiftUI
/*
struct ex1: View {
    @State var title = "First View"
    
    var body: some View {
        NavigationStack {
            VStack {
                Text(title)
                NavigationLink(destination: SecondView(title: $title), label: {Text("Go...")})
            }
        }
    }
}

struct SecondView: View {
    
    @Binding var title: String
    
    var body: some View {
        VStack {
            Text(title)
        }
        .onAppear {
            title = "Second View"
        }
        .onDisappear{
            title = "First View"  // 다시 돌아옴
        }
        .navigationTitle("SecondView")
        
    }
}*/

// ex2
/*
struct ex2: View {
    @State var data = "HELLO"
    
    var body: some View {
        NavigationStack {
            VStack {
                Text(data)
                NavigationLink(destination: SecondView(data: $data), label: {Text("Go...")})
            }
        }
    }
}

struct SecondView: View {
    
    @Binding var data: String
    
    var body: some View {
        VStack {
            Spacer()
            Text(data)
            TextField("여기에 입력", text: $data)
            Spacer()
        }
        .background(.white)
        .navigationBarBackButtonHidden(true)
    }
}
*/

//ex3.
struct ex3: View {
    @State var data = "HELLO"
    
    var body: some View {
        NavigationStack {
            VStack {
                Text(data)
                NavigationLink(destination: SecondView(data: $data), label: {Text("Go...")})
            }
        }
    }
}

struct SecondView: View {
    
    @Binding var data: String
    @State var isEditing = false
    
    var body: some View {
        VStack {
            Spacer()
            Text(data)
            
            TextField("여기에 입력", text: $data)
                .disabled(!isEditing)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .border(isEditing ? .black : .mint, width: 1)
            Spacer()
        }
        .background(.white)
        .navigationBarBackButtonHidden(false)
        .toolbar {
            Button(action: {
                isEditing.toggle()
            }, label: {
                Text(isEditing ? "Done" :"Edit")
            })
        }
        .padding()
    }
}

struct naviEx_Previews: PreviewProvider {
    static var previews: some View {
        ex3()
    }
}
