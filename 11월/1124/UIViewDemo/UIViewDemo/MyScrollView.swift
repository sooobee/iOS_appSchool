//
//  MyScrollView.swift
//  UIViewDemo
//
//  Created by 김수비 on 11/24/23.
//

import SwiftUI

struct MyScrollView: UIViewRepresentable {
    var text: String
    
    func makeUIView(context: UIViewRepresenntableContext<MyScrollView) -> some UIView {
        let scrollView = UIScrollView()
        scrollView.refreshControl = UIRefreshControl()
    }
    
    func updateUIView(_ uiView: UIViewType, context: Context) {
        
    }
    
    // 코디네이터 구현: 이벤트에 대한 반응이 필요한 뷰일 경우
    class Coordinator: NSObject, UIScrollViewDelegate {
        
    }
}

#Preview {
    MyScrollView()
}
