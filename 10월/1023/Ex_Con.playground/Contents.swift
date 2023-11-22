import UIKit


// 딕셔너리 p.128

var bookDict: [String:String] = [:]
var bookDict1 = ["100-234": "Wind in Willows", "104-2345":"Shutter Island"]
var bookDict2 = [String: String]()


// 딕셔너리 값(항목) 추가 또는 갱신
bookDict1["101-235"] = "test books"
bookDict.removeValue(forKey: "101-235")
print(bookDict1)


// 딕셔너리 항목 조회(반복)
for(bookid, title) in bookDict {
    print(bookid, title)
}




// ex 01.
func mostFrequentValue(dict: [String: Int]) -> Int {
    var valueCount = [Int : Int]()

    // 코드
    for value in dict.values {
        valueCount[value, default: 0] += 1 // count의 default값을 0으로 초기화
    }

    var max = 0
    var mostFrequentValue = 0

    for (value, count) in valueCount{
        if count > max {
            max = count
            mostFrequentValue = value
        }
    }
    return mostFrequentValue
}

let dict1 = ["a" : 1, "b" : 2, "c" : 3, "d" : 2, "e" : 2]
mostFrequentValue(dict: dict1)




// ex 02.
func reverseKeyValue(dict: [String: String]) -> [String: String] {
    // 코드를 작성
    var newDict = [String: String]()

    for (key, value) in dict {
        newDict[value] = key
    }
    return newDict
}

let dict2 = ["apple": "red", "banana": "yellow", "grape": "purple"]
let result = reverseKeyValue(dict: dict2)
print(result)             // ["red": "apple", "yellow": "banana", "purple": "grape"]



//ex 03.
func keysWithValue(dict: [String: Int], value: Int)-> [String]{
    // 코드를 작성
    var newdict = [String]()

    for (k, v) in dict {
        if(v == value){
            newdict.append(k)
        }
    }
    return newdict
}
let dict3 = ["a" : 1, "b" : 2, "c": 3, "d" : 2, "e" : 1]
let result = keysWithValue(dict: dict3, value: 2)
print(result) // ["d", "b"]




// ex04.
func dictToString(dict: [String: Any]) -> String {
    var str = " "

    for(k, v) in dict {
        str += "\(k):\(v),"
    }
    str.removeLast() // 마지막 ,을 지워줌
    return str
}

let dict4: [String: Any] = ["name": "Alice", "age": 20, "gender": "female"]
let result = dictToString(dict: dict4)
print(result)       // age:20,gender:female,name:Alice




// ex05.
func sumOfKeysAndValues(dict: [Int: Int]) -> (Int, Int) {
    var keySum = 0
    var valueSum = 0

    
    
    for(k,v) in dict {
        keySum += k
        valueSum += v
    }
    
    return (keySum, valueSum) // 튜플로 묶어서 가능
}

let dict5 = [1: 10, 2: 20, 3: 30]
let result = sumOfKeysAndValues(dict: dict5)
print(result)       // (6, 60)


// ex06.
let person: [String : Any] = ["name": "Kim", "age": 25, "job": "programmer"]
print( person["name"] ?? "Unknown" )



// ex07.
let fruit = ["apple": 3, "banana": 5, "orange": 2]
for (key, value) in fruit {
    print("\(key): \(value)")
}

// ex08.
