//
//  TestUI.swift
//  GridRowDemo
//
//  Created by 김수비 on 11/9/23.
//

import SwiftUI

struct TestUIView: View {

    @State private var columnNum = 1.0

    var body: some View {
        VStack {
            Text("\( Int(columnNum) )")
            Slider(value: $columnNum, in: 1...5, step: 1)

            Spacer()

            LazyVGrid(columns: Array(repeating: GridItem(), count: Int(columnNum)), spacing: 5) {
                ForEach((0...4), id: \.self) { _ in
                    CellContent(index: 1, color: .red)
                }
            }
            Spacer()
        }
    }
}
#Preview {
    TestUIView()
}
