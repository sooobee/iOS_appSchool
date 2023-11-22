//
//  ListEx.swift
//  Project
//
//  Created by 김수비 on 2023/11/01.
//

import SwiftUI

// ex1. 
struct ListEx: View {
    var body: some View {
        
        VStack{
            Text("SwiftUI List Quiz")
                .font(.largeTitle)
                .padding()
            
            List
            {
                Text("Item 1")
                Text("Item 2")
                Text("Item 3")
                Text("Item 4")
                Text("Item 5")
                Text("Item 6")
                Text("Item 7")
                Text("Item 8")
                Text("Item 9")
                Text("Item 10")
            }
            .backgroundStyle(Color.white)
            .foregroundColor(Color.indigo)
            // List
        } // VStack
    }
}

struct ListEx_Previews: PreviewProvider {
    static var previews: some View {
        ListEx()
    }
}
