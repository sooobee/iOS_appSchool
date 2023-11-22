//
//  ContentView.swift
//  GridRowDemo
//
//  Created by 김수비 on 11/9/23.
//

import SwiftUI

struct Cell: View {
    var index: String
    var color: Color
    
    var body: some View {
        Text("\(index)")
            .frame(minWidth: 50, maxWidth: .infinity, minHeight: 100)
            .background(color)
            .cornerRadius(8)
            .font(.system(.largeTitle))
    }
}

struct timeTable: View {
    var body: some View {
        
        VStack {
            
            Text("시간표")
                .font(.system(size: 30))
                .frame(maxWidth: .infinity, alignment: .leading)
        
            Grid {

                GridRow {
                    ForEach(1...4, id: \.self) { index in
                        if (index % 2 == 1){
                            Cell(index: "C", color: .red).contextMenu {
                                VStack {
                                    Text("교수: 훈이")
                                    Text("강의실: 공대 7호관")
                                }
                            }
                            
                        } else {
                            Color.clear.gridCellUnsizedAxes([.horizontal, .vertical])
                        }
                    }
                }
                
                GridRow {
                    Cell(index: "C", color: .red).contextMenu {
                        VStack {
                            Text("교수: 훈이")
                            Text("강의실: 공대 7호관")
                        }
                    }
                    
                    Cell(index: "JAVA", color: .blue).contextMenu {
                        VStack {
                            Text("교수: 철수")
                            Text("강의실: 공대 7호관")
                        }
                    }
                    Cell(index: "Swift", color: .green).contextMenu {
                        VStack {
                            Text("교수: 맹구")
                            Text("강의실: 공대 7호관")
                        }
                    }
                    Cell(index: "JAVA", color: .blue).contextMenu {
                        VStack {
                            Text("교수: 훈이")
                            Text("강의실: 공대 7호관")
                        }
                    }
                }
                
                GridRow {
                    ForEach(11...13, id: \.self) { index in
                        if (index % 2 == 1){
                            
                            Cell(index: "Swift", color: .green).contextMenu {
                                VStack {
                                    Text("교수: 맹구")
                                    Text("강의실: 공대 7호관")
                                }
                            }
                        } else {

                            Color.clear.gridCellUnsizedAxes([.horizontal, .vertical])
                            
                        }
                    }
                    Cell(index: "JAVA", color: .blue).contextMenu {
                        VStack {
                            Text("교수: 훈이")
                            Text("강의실: 공대 7호관")
                        }
                    }
                }
                Cell(index: "점심 시간", color: .yellow).contextMenu {
                    Text("맛있는 점심을 먹어요")
                }
                
                GridRow {
                    ForEach(1...4, id: \.self) { index in
                        
                        if (index % 2 == 1){
                            // 홀수만 생성
                            Cell(index: "토익", color: .purple).contextMenu {
                                VStack {
                                    Text("교수: 짱구")
                                    Text("강의실: 인문대 1호관")
                                }
                            }
                            
                        } else {
                            // 빈 셀은 clear 색상 값으로 구성된 color 뷰로 표시됨
                            Color.clear.gridCellUnsizedAxes([.horizontal, .vertical])
                            
                        }
                    }
                    Cell(index: "토익", color: .purple).contextMenu {
                        VStack {
                            Text("교수: 짱구")
                            Text("강의실: 인문대 1호관")
                        }
                    }
                }
                
            }
        } // VStack
    }
}
#Preview {
    timeTable()
}
