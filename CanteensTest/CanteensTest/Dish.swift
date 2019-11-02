//
//  Dish.swift
//  CanteensTest
//
//  Created by Mathias Larsen on 01/11/2019.
//  Copyright © 2019 MadneZ. All rights reserved.
//

import Foundation
import UIKit

class Dish {
    var name: String
    var img: UIImage
    var rating: UIImage
    
    init(name: String, img: UIImage, rating: UIImage) {
        self.name = name
        self.img = img
        self.rating = rating
    }
}
