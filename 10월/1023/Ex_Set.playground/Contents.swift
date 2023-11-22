import UIKit

// 집합 생성과 초기화
var letters = Set<Character>()
var musics : Set = ["Rock", "Rock", "Classical", "Hip pop"] // 배열이 아니라는 걸 표현하기 위해 :Set 적어줌

// 값 추가
letters.insert("a")
letters.insert("a")
letters.insert("b") // 중복안됨
musics.insert("k-pop")

print( letters )
print( musics )

// 값 삭제
letters.remove("b")
print( letters)

// 값의 포함 여부
letters.contains("a") // true
letters.contains("b") // false

// 반복
letters.insert("b")
letters.insert("c")
letters.insert("d")

for c in letters {
    print(c)
}

// 집합 연산(배열과 차이)
let odd: Set = [1, 3, 5, 7, 9]
let even: Set = [0, 2, 4, 6, 8]
let single: Set = [2, 3, 5, 7]

odd.union(even).sorted() // 합해서 정렬
odd.subtracting(single) // 차집합, 공통된 값을 제외한 새로운 집합을 생성
odd.intersection(single) // 교집합, 공통된 값으로 새로운 집합을 생성
odd.symmetricDifference(single) // 여집합, 공통된 값을 제외한 새로운 집합을 생성




// ex. 01
func intersect(_ s1: Set<Int>, _ s2: Set<Int>) -> Set<Int>{
    return s1.intersection(s2)
}

let setA: Set<Int> = [1, 2, 3, 4, 5]
let setB: Set<Int> = [3, 4, 5, 6, 7]
let intersection = intersect(setA, setB)

print(intersection) // [3, 4, 5]



// ex. 02
func unite(_ s1: Set<String>, _ s2: Set<String>) -> Set<String>{
    return s1.union(s2)
}

let setC: Set<String> = ["apple", "banana", "cherry"]
let setD: Set<String> = ["cherry", "durian", "elderberry"]
let union = unite(setC, setD)
print(union) // ["apple", "banana", "cherry", "durian", "elderberry"]



// ex. 03
func subtract(_ s1: Set<Double>, _ s2: Set<Double>) -> Set<Double>{
    return s1.subtracting(s2)
}

let setE: Set<Double> = [1.0, 2.0, 3.0, 4.0, 5.0]
let setF: Set<Double> = [2.0, 4.0, 6.0]
let difference = subtract(setE, setF)
print(difference) // [1.0, 3.0, 5.0]


// ex. 04
func disjoint(_ s1: Set<Character>, _ s2: Set<Character>)-> Bool{
    if(s1.intersection(s2) == []){
        return true
    }
    else{
        return false
    }
    
    // return set1.isDisjoint(with: set2) 라고 해도 됨
}

let SetG: Set<Character> = ["a", "b", "c"]
let SetH: Set<Character> = ["d", "e", "f"]
let isDisjoint = disjoint(SetG, SetH)
print(isDisjoint) // true




// ex.05
func getSubsets(_ s: Set<Int>) -> [[Int]] {
    // 모르겠으요
    var result = [[Int]]()
    var arr = Array(s)
    
    result.append([])
    
    for i in 0..<s.count {
        for j in 0..<result.count {
            result.append([arr[i]] + result[j]) // result를 업데이트해주고(이때 result[0] = 없음)
                                                // 다시 result를 불러와서 append 해줌
        }
    }
     
    return result
}

let setI: Set<Int> = [1, 2, 3]
let subsets = getSubsets(setI)
print(subsets) // [[], [1], [2], [3], [1, 2], [1, 3], [2, 3], [1, 2, 3]]
               // 또는 [Set([]), Set([2]), Set([1]), Set([1, 2]), Set([3]), Set([3, 2]), Set([1, 3]), Set([3, 2, 1])]

/*
var dNumbers = [Int]()
var strs = [String]()

// 클로저 축약 표현
dNumbers = numbers.map({
    return $0 * 2
})

dNumbers = numbers.map { &0 * 2}
*/

// 클로저 표현식의 반복
let evenNumbers = [0, 2, 4, 6, 8]
let oddNumbers = [0, 1, 3, 5, 7]
let doubleNumber: (Int) -> Int = { $0 * 2 }

evenNumbers.map { $0 * 2 }
oddNumbers.map { $0 * 2 }

let opt: Int? = 5
let resultOpt = opt.map { $0 * 2 }
// print { resultOpt }

// 범위 연산자
let range = ( 1...5 )
let resultRange = range.map{ $0 * 2}
print(resultRange)

print( (1...5).map{ $0 * 2 })

// Filter
let numbers = [0, 1, 2, 3, 4]

var result = numbers.filter( { (num: Int) -> Bool in
    return num % 2 == 0
} )

// 축약표현
result = numbers.filter { $0 % 2 == 0}
print(result)

// map과 함께
result = numbers.map{ $0 * 3 }.filter{ $0 % 2 == 0 }
print(result)

// reduce
