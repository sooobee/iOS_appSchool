//
//  StackAlignmentEx.swift
//  Project
//
//  Created by 김수비 on 2023/10/30.
//

import SwiftUI

/*
struct StackAlignmentEx: View {
    var body: some View {
        VStack {
            HStack(alignment: .bottom) {
                Text("Hello")
                    .font(.largeTitle)
                    .frame(alignment: .leadingLastTextBaseline)
                Text("World")
                    .frame(alignment: .leadingLastTextBaseline)
            }
        }
    }
}*/


/*예제 2*/
struct StackAlignmentEx: View {
    var body: some View {
        ZStack(alignment: .bottomLeading) {
            Rectangle()
                .fill(Color.red)
                .frame(width: 100, height: 100)

            Rectangle()
                .fill(Color.blue)
                .frame(width: 50, height: 50)
        }
    }
}

struct StackAlignmentEx_Previews: PreviewProvider {
    static var previews: some View {
        StackAlignmentEx()
    }
}
