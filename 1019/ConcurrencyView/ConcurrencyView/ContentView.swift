//
//  ContentView.swift
//  ConcurrencyView
//
//  Created by 김수비 on 2023/10/19.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Button(action: {
            Task {
                await doSomething()
            }
        }){
            Text("Do Something")
        }
    }
    
    // 오류 핸들링
    func doSomething() async {
        var timeStamps: [Int: Date] = [:]
        
        await withTaskGroup(of: (Int, Date).self){group in
            for i in 1...5{
                group.addTask{
                    return(i, await takesTooLong())
                }
            }
            
            for await(task, date) in group {
                timeStamps[task] = date
            }
        }
        
        // 출력
        for (task, date) in timeStamps{
            print("Task = \(task), Date = \(date)")
        }
    }
    
    enum DurationError: Error {
        case tooLong
        case tooShort
    }
    
    // 비동기 함수
    func takesTooLong() async -> Date{
        sleep(5)
        return Date()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}


