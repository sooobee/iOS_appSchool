import SwiftUI

// 1부터 100까지 합을 구하는 비동기함수
// async let을 이용하여 두 개의 비동기 작업을 동시에 실행하고 그 결과를 합하여 출력하는 함수를 작성해보세요.

struct ContentView: View {
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
        // async let을 사용하여 두 개의 비동기 작업을 동시에 실행
        // 상수 정의(async let)
        async let result1 = sumFrom(1, 50)
        async let result2 = sumFrom(51, 100)
        
        // 결과를 출력
        // 상수 사용(await)
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
