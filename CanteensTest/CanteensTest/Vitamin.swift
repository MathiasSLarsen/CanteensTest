//
//  Vitamin.swift
//  CanteensTest
//
//  Created by Mathias Larsen on 02/11/2019.
//  Copyright © 2019 MadneZ. All rights reserved.
//

import Foundation

class Vitamin{
    var name: String
    var value: String
    var progress: Float
    var procent: String
    
    init(name: String, value: String, progress: Float, procent: String) {
        self.name = name
        self.procent = procent
        self.progress = progress
        self.value = value
    }
}
