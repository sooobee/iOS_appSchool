//
//  DemoData.swift
//  ch22
//
//  Created by 김수비 on 2023/10/13.
//

import Foundation

struct ContentView: View {
    @ObservedObject var demoData : DemoData = DemoData()
    
    var body: some View {
        Text("\(demoData.currentUser), you are user number \(demoData.userCount)")
    }
}

struct ContentView_PreViews: PreviewProvider {
    static var previews: some View {
        ContentView(demoData: DemoData())
    }
}
