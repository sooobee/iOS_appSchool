//
//  AligmentView.swift
//  1030
//
//  Created by 김수비 on 2023/10/30.
//

import SwiftUI

struct AligmentView: View {
    var body: some View {
        VStack(spacing: 50){
            Text("This is some text")
                .font(.largeTitle)
            Text("This is some longer text")
                .font(.body)
            Text("This is some short")
                .font(.headline)
        }
        HStack(alignment: .firstTextBaseline, spacing: 20p){
            Text("This is some text")
                .font(.largeTitle)
            Text("This is some longer text")
                .font(.body)
            Text("This is some short")
                .font(.headline)
            
        }
    }
}

struct AligmentView_Previews: PreviewProvider {
    static var previews: some View {
        AligmentView()
    }
}
