//
//  ContentView.swift
//  GridRowDemo
//
//  Created by 김수비 on 11/9/23.
//

import SwiftUI

struct CellContent: View {
    var index: Int
    var color: Color
    
    var body: some View {
        Text("\(index)")
            .frame(minWidth: 50, maxWidth: .infinity, minHeight: 100)
            .background(color)
            .cornerRadius(8)
            .font(.system(.largeTitle))
    }
}


struct ContentView: View {
    var body: some View {
        Grid(alignment: .topLeading) {
            
            GridRow(alignment: .bottom) {
                CellContent(index: 0, color: .orange)
                Image(systemName: "record.circle.fill")
                Image(systemName: "record.circle.fill")
                Image(systemName: "record.circle.fill")
                CellContent(index: 0, color: .yellow)
            }
            .font(.largeTitle)
            
            GridRow {
                CellContent(index: 0, color: .orange)
                Image(systemName: "record.circle.fill")
                Image(systemName: "record.circle.fill")
                Image(systemName: "record.circle.fill")
                CellContent(index: 0, color: .yellow)
            }
            .font(.largeTitle)
            
            
            GridRow {
                ForEach(1...5, id: \.self) { index in
                    if (index % 2 == 1){
                        // 짝수만 생성
                        CellContent(index: index, color:.red)
                    } else {
                        // 빈 셀은 clear 색상 값으로 구성된 color 뷰로 표시됨
                        Color.clear.gridCellUnsizedAxes([.horizontal, .vertical])
                    }
                }
            }
            
            GridRow {
                ForEach(6...8, id: \.self) { index in
                    CellContent(index: index, color: .blue)
                }
            }
            
            GridRow {
                ForEach(11...12, id: \.self) { index in
                    CellContent(index: index, color: .green)
                    
                }
            }
            CellContent(index: 16, color: .blue)
            
            GridRow {
                CellContent(index: 17, color: .orange)
                    .gridCellColumns(2)
                CellContent(index: 18, color: .indigo)
                    .gridCellColumns(3)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
