//
//  Product.swift
//  MGDeepLinkDemo
//
//  Created by Tuan Truong on 1/23/17.
//  Copyright © 2017 Tuan Truong. All rights reserved.
//

import UIKit

class Product {
    var id: String
    var name: String
    var price: Double
    
    var priceString: String {
        return "$\(price)"
    }
    
    init(id: String, name: String, price: Double) {
        self.id  = id
        self.name = name
        self.price = price
    }
}
