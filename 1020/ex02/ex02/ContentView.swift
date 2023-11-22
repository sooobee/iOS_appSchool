//
//  ContentView.swift
//  ex02
//
//  Created by 김수비 on 2023/10/20.
//

import SwiftUI

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct ConcurrencyView1: View {
    var body: some View {
        Button(action: {
            // 동기 함수에서 비동기 함수 호출
            Task {
                await doSomething()
            }
        }, label: {
            Text("Do Something")
        })
    }

    func doSomething() async {
        var totalSum: [Int: Int] = [:]
        var indexlist = [1, 50]
        // async let을 사용하여 두 개의 비동기 작업을 동시에 실행
        async let result1 = sumFrom(indexlist[0] + 1, indexlist[0] + 50)
        async let result2 = sumFrom(indexlist[1] + 1, indexlist[1] + 50)
        // 결과를 출력
        var a = await result1
        var b = await result2
        print("\(a + b)")
    }

    // s부터 e까지의 합을 구하는 비동기 함수
    func sumFrom(_ s: Int, _ e: Int) async -> Int {
        var sum = 0
        for i in s...e {
            sum += i
        }
        return sum
    }
}
