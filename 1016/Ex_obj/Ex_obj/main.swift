//
//  main.swift
//  Ex_obj
//
//  Created by 김수비 on 2023/10/16.
//

import Foundation

// 값 타입과 참조 타입 p.108~111

// 프로퍼티 또는 인스턴스 변수
class BankAccount {
    var accountBalance: Float = 0
    var accountNumber: Int = 0
    let fees: Float = 25.00
    
    var blanceLessFees: Float {
        get { return accountBalance - fees }
        set(newBalance) {
            accountBalance = newBalance - fees
        }
    }
    
    init(){
    }
    
    // 클래스 인스턴스 초기화
    init(number: Int, balance: Float){
        self.accountNumber = number
        self.accountBalance = balance
    }
    
    // 인스턴스 메서드
    final func displayBalance() {
        print("Number \(accountNumber)")
        print("Current balance is \(accountBalance)")
    }
    
    // 타입 메서드(Type method)
    class func getMaxBlance() -> Float {
        return 100000.00
    }
    
}

let account1 = BankAccount(number: 1, balance: 100.0)
account1.displayBalance()
account1.accountNumber
account1.blanceLessFees



let account2 = BankAccount(number: 2, balance: 500.0)
account2.displayBalance()
account2.accountNumber

BankAccount.getMaxBlance()

class SavingsAcccount: BankAccount {
    var interesRate: Float = 0.0
    
    func calculateInterest() -> Float {
        return interesRate * accountBalance
    }
    
    // 상속받은 메서드 오버라이딩 p.103
    // 메서드 재정의
    override func displayBalance() {
        super.displayBalance()

        print("prevailing interest rate is \(interesRate)")
    }
}

let savings1 = SavingsAcccount()
savings1.calculateInterest()
savings1.displayBalance()


