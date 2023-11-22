import UIKit

// 예제2
enum Animal {
    case dog(name: String)
    case cat(name: String)
    case bird(name: String)
}


func checkAnimal(animals: [Animal]){
    for animal in animals {
        switch animal {
            case .dog(let name):
                print("이 동물은 개이고 이름은 \(name)입니다.")
            case .cat(let name):
                print("이 동물은 고양이이고 이름은 \(name)입니다.")
            case .bird(let name):
                print("이 동물은 새이고 이름은 \(name)입니다.")
        }
    }
    
}

// 예시
let animals = [Animal.dog(name: "바둑이"), Animal.cat(name: "나비"), Animal.bird(name: "짹짹이")]

checkAnimal(animals : animals)


/*
// 예졔4
enum OP{
    case add, subtract, multiply, divide
}

func calculate(num1: Int, num2: Int, op: OP) -> Int{
    switch op {
        case .add:
            return (num1+num2)
        case .subtract:
                return (num1-num2)
        case .multiply:
                return (num1*num2)
        case .divide:
                return (num1/num2)
    }
    
}

let result = calculate(num1: 10, num2: 5, op: .divide)

print("결과는 \(result)입니다.")      //결과는 2입니다.

print("결과는 \( calculate(num1: 10, num2: 5, op: .add) )입니다.")        //결과는 15입니다.
print("결과는 \( calculate(num1: 10, num2: 5, op: .subtract) )입니다.")   //결과는 5입니다.
print("결과는 \( calculate(num1: 10, num2: 5, op: .multiply) )입니다.")   //결과는 50입니다.
*/

// 예제3

enum Season : String {
    case spring = "spring"
    case summer = "summer"
    case autumn = "autumn"
    case winter = "winter"
}

func getSeason(date: (month: Int, day: Int)) -> Season{
    switch date.month {
    case 3...5:
        return .spring
    case 6...8:
        return .summer
    case 9...11:
        return .autumn
    default:
        return .winter
    }
}

// 예시:
let today = (month: 10, day: 17)
let season = getSeason(date: today)

print("오늘은 \(season)입니다.")  // 오늘은 autumn입니다.
print("오늘은 \( getSeason(date: (month: 6, day: 17)) )입니다.")      // 오늘은 summer입니다.
print("오늘은 \( getSeason(date: (month: 12, day: 15)) )입니다.")     // 오늘은 winter입니다.
print("오늘은 \( getSeason(date: (month: 3, day: 1)) )입니다.")       // 오늘은 spring입니다.

/*
// 서비스 문제
enum Beverage {
    case coffee(price: Int)
    case tea(price: Int)
    case juice(price: Int)
}

func printTypeAndPrice(berverages: Beverage){
    for beverage in Beverages {
        switch beverage {
        case .coffee(let price):
            print("이 음료는 커피이고 가격은 \(price)원입니다.")
        case .tea(let price):
            print("이 음료는 차이고 가격은 \(price)원입니다.")
        case .juicy(let price):
            print("이 음료는 주스고 가격은 \(price)원입니다.")
        }
    }
}*/

// 예제 6
enum Direction{
    case right, left, up, down
}

func move(position: (x: Int, y: Int), direction: Direction) -> (x: Int, y: Int)
{
    switch direction {
    case .right:
        return (position.x+1, position.y)
    case .left:
        return (position.x-1, position.y)
    case .up:
        return (position.x, position.y+1)
    case .down:
        return (position.x, position.y-1)
    }
}

// 예시:
let currentPosition = (x: 0, y: 0)

var nextPosition = move(position: currentPosition, direction: .right)
print("다음 위치는 (\(nextPosition.x), \(nextPosition.y))입니다.")  // 다음 위치는 (1, 0)입니다.

nextPosition = move(position: currentPosition, direction: .left)
print("다음 위치는 (\(nextPosition.x), \(nextPosition.y))입니다.")  // 다음 위치는 (-1, 0)입니다.

nextPosition = move(position: currentPosition, direction: .up)
print("다음 위치는 (\(nextPosition.x), \(nextPosition.y))입니다.")  // 다음 위치는 (0, 1)입니다.

nextPosition = move(position: currentPosition, direction: .down)
print("다음 위치는 (\(nextPosition.x), \(nextPosition.y))입니다.")  // 다음 위치는 (0, -1)입니다.

// 열거형 예제 8
enum Color {
    case red(r: Int, g: Int, b: Int)
    case green(r: Int, g: Int, b: Int)
    case blue(r: Int, g: Int, b: Int)
}

func printColors(colors: [Color]){
    for color in colors {
        switch color {
        case .red(let r, let g, let b):
            print("이 색상은 빨강이고 RGB 값은 \(r), \(g), \(b)입니다.")
        case .green(let r, let g, let b):
            print("이 색상은 초록이고 RGB 값은 \(r), \(g), \(b)입니다.")
        case .blue(let r, let g, let b):
            print("이 색상은 파랑이고 RGB 값은 \(r), \(g), \(b)입니다.")
        }
    }
}

// 예시
let colors = [Color.red(r: 255, g: 0, b: 0), Color.green(r: 0, g: 255, b: 0), Color.blue(r: 0, g: 0, b: 255)]
printColors(colors: colors)

// 출력결과
// 이 색상은 빨강이고 RGB 값은 (255, 0, 0)입니다.
// 이 색상은 초록이고 RGB 값은 (0, 255, 0)입니다.
// 이 색상은 파랑이고 RGB 값은 (0, 0, 255)입니다.
