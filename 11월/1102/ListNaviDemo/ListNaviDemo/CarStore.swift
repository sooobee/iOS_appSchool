//
//  CarStore.swift
//  ListNaviDemo
//
//  Created by 김수비 on 2023/11/02.
//

import Foundation
import SwiftUI
import Combine

class CarStore : ObservableObject {
    @Published var cars: [Car]
    
    init (cars: [Car] = []) {
        self.cars = cars
    }
}

