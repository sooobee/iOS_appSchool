import UIKit

var greeting = "Hello, playground"

func largerNumber(num1 a: Int, num2 b: Int) -> Int {
    if a == b {
        return 0
    }
    return a > b ? a : b
}

let c: Int = largerNumber(num1: 6, num2: 6)
print(c)

// print(  largerNumber(num1: 1) )

func sizeConverter(_ length: Float) -> (yards: Float, cent: Float, meter: Float) {
    let yards = length * 0277778
    let centimeters = length * 2.54
    let meters = length * 0.0254
    
    return (yards, centimeters, meters)
}

let legthTuple = sizeConverter(20)
print( legthTuple, legthTuple.yards, legthTuple.cent, legthTuple.meter)

func calcArea(length: Float, width: Float) -> Float {
    var length = length
    length += width
    return length
}
let lengthInput : Float = 10

print( calcArea(length: lengthInput, width: 20 ))
print( lengthInput )

// 입출력 매개변수: 외부변수에 영향 p.78
func doubleValue(value: inout Int) -> Int {
    value  += value
    return value
}
var myValue = 10
print ("doubleValue: ", doubleValue(value: &myValue))
print ("myvalue: ", myValue)

// 매개변수 함수 p,78
func inchesToFeet(_ inches: Float) -> Float {
    return inches * 0.08333
}

func inchesToYards(_ inches: Float) -> Float {
    return inches * 0.027778
}

func outputConversion(_ converterFunc: (Float) -> Float, value: Float){
    let result = converterFunc(value)
    print(" \(result)")
}

let toFeet = inchesToFeet
let toYards = inchesToYards

outputConversion(toFeet, value: 10)
outputConversion(toYards, value: 10)

// 후행 클로저

