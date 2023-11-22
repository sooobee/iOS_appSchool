import UIKit

// defer 구문 p.138

// 에러 타입 선언하기 p.134
enum FileTransferError : Error {
    case noConnection
    case lowBandwidth
    case fileNotFound
}

// 에러 던지기(발생) p.135
let connectionOK = true
let connectionSpeed = 30.00
let fileFound = false

func fileTransfer() throws {
    
    guard connectionOK else {
        throw FileTransferError.noConnection
    }
    
    guard connectionSpeed > 30 else {
        throw FileTransferError.lowBandwidth
    }
    
    guard fileFound else {
        throw FileTransferError.fileNotFound
    }
}

// 스로잉 메서드와 함수 호출 p.136
func sendFile () -> String {
    
    do{
        try fileTransfer()
    } catch FileTransferError.noConnection {
        return("No Network Connection")
    } catch FileTransferError.lowBandwidth {
        return("File Transfer Speed too Low")
    } catch FileTransferError.fileNotFound {
        return("File not Found")
    } catch{
        return("Unkown error")
    }
    return "Successful transfer"
}

sendFile()

// 에러 캐칭 비활성화? p.137
let x = try? fileTransfer()
let y: Int?

do {
    y = try fileTransfer()
} catch {
    y = nil
}
// let z = try! fileTransfer()

func transfer() -> Int? {
    if let data = try? fileTransfer() {return data}
    return nil
}

do {
    let fahrenheit = try celsiusToFahrenheit(-300)
    print(fahrenheit)
} catch TemperatureError.invalidTemperature {
    print("Invalid temperature")
}
// Invalid temperature

화씨 = 섭씨 * 1.8 + 32]]


// 배열
var arr: [Int] = []

// 배열 추가하기
arr.append(6) //[6]
arr.append(100) // [6, 100]

// 멤버 삽입하기
arr.insert(2, at: 1) // [6, 1, 100
