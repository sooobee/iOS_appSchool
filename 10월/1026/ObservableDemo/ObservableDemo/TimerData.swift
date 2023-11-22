//
//  TimerData.swift
//  ObservableDemo
//
//  Created by 김수비 on 2023/10/26.
//

import Foundation
import Combine

class TimerData : ObservableObject {
    @Published var timeCount = 0
    var timer : Timer?
    
    init() {
        timer = Timer.scheduledTimer(timerInterval: 1.0,
                                     target: self,
                                     selector: #selector(timerDidFire),
                                     userInfo: nil,
                                     repeats: true
                                     )
    }
}

@Objc func timerDidFire(){
    timeCount += 1
}

func resetCount(){
    timeCount = 0
}
                                     
                                     
