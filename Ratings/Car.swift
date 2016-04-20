//
//  Car.swift
//  Ratings
//
//  Created by Karan Wadhera on 4/18/16.
//  Copyright © 2016 Karan Wadhera. All rights reserved.
//

import UIKit

struct Car {
    var type: String?
    var year: Int
    var isSedan: Bool
    
    init(type: String?, year: Int,isSedan: Bool) {
        self.type = type
        self.year = year
        self.isSedan = isSedan
    }
}