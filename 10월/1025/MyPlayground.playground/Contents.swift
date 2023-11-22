import UIKit

var greeting = "Hello, playground"

 // 맵, 필터, 리듀스 예제 01
// 주어진 배열에서 홀수만 골라내서 제곱한 후 모두 더하는 함수를 작성하세요.
func sumOfSquaresOfOdds(array: [Int]) -> Int {
    return array.filter {$0 % 2 == 1}
        .map{$0 * $0}
        .reduce(0){$0 + $1}
}

let array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
print(sumOfSquaresOfOdds(array: array))

// ex. 11
// 주어진 문자열에서 모음(a,e,i,o,u)의 개수를 세는 함수를 작성하세요

func countVowels(){
    
}

let word = "swift"
let vowelCount = countVowels(word)
print(vowelCount) // 1


