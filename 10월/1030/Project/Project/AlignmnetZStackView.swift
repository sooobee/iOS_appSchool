//
//  AlignmnetZStackView.swift
//  Project
//
//  Created by 김수비 on 2023/10/30.
//

import SwiftUI

/*
extension VerticalAlignment {
    
    private enum CrossAlignmnet : AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            return d[.bottom]
        }
    }
    
    static let crossAlignment = VerticalAlignment(CrossAlignmnet.self)
}*/

struct AlignmnetZStackView: View {
    var body: some View {
        /* HStack
        HStack(alignment: .center, spacing: 20){
            Circle()
                .foregroundColor(.purple)
                .alignmentGuide(.crossAlignment,
                                computeValue: {d in
                    d[VerticalAlignment.center] })
            
                .frame(width: 100, height: 100)
            
            VStack{
                Rectangle()
                    .foregroundColor(.green)
                    .frame(width: 100, height: 100)
                
                Rectangle()
                    .foregroundColor(.red)
                    .frame(width: 100, height: 100)
                
                Rectangle()
                    .foregroundColor(.blue)
                    .alignmentGuide(.crossAlignment, computeValue:
                                        { d in d[VerticalAlignment.center] })
                    .frame(width: 100, height: 100)
                
                Rectangle()
                    .foregroundColor(.orange)
                    .frame(width: 100, height: 100)
            }
        }
        .padding()*/
        
        // 여기부턴 z스택
        ZStack(alignment: Alignment.myAlignment){
            Rectangle()
                .foregroundColor(.green)
                .alignmentGuide(HorizontalAlignment.myAlignment){
                    d in d[.trailing]
                }
                .alignmentGuide(VerticalAlignment.myAlignment){
                    d in d[.bottom]
                }
                .frame(width: 100, height: 100)
            
            Rectangle()
                .foregroundColor(.red)
                .alignmentGuide(VerticalAlignment.myAlignment){
                    d in d[VerticalAlignment.top]
                }
                .alignmentGuide(HorizontalAlignment.myAlignment){
                    d in d[HorizontalAlignment.center]
                }
                .frame(width: 100, height: 100)
            
             Circle()
                .foregroundColor(.orange)
                .alignmentGuide(HorizontalAlignment.myAlignment)
                    { d in d[.leading] }
                .alignmentGuide(VerticalAlignment.myAlignment)
                    { d in d[.bottom] }
                .frame(width: 100, height: 100)
        }
    }
    
}

/* 여기서부턴 스택 겹치기(z스택) */

// p.294
extension HorizontalAlignment {
    enum MyHorizontal: AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat{
            d[HorizontalAlignment.center]
        }
    }
    static let myAlignment = HorizontalAlignment(MyHorizontal.self)
}

extension VerticalAlignment {
    private enum Myvertical : AlignmentID {
        static func defaultValue(in d: ViewDimensions) -> CGFloat {
            return d[VerticalAlignment.center]
        }
    }
    static let myAlignment = VerticalAlignment(Myvertical.self)
}

extension Alignment {
    static let myAlignment = Alignment(horizontal: .myAlignment,
                                       vertical: .myAlignment)
}

// 스택 정렬 교차(스택 겹치기) p.291
struct AligmnetZStackView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 20){
            Circle()
        }
    }
}

struct AlignmentZStackView_Previews: PreviewProvider {
    static var previews: some View {
        AlignmnetZStackView()
    }
}
        
    
