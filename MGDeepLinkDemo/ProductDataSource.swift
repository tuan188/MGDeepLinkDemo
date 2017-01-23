//
//  ProductDataSource.swift
//  MGDeepLinkDemo
//
//  Created by Tuan Truong on 1/23/17.
//  Copyright © 2017 Tuan Truong. All rights reserved.
//

import UIKit

class ProductDataSource {
    
    private let products = [
        Product(id: "iphone", name: "iPhone 7", price: 600),
        Product(id: "ipad", name: "iPad Air", price: 400),
        Product(id: "macbook", name: "Macbook Pro", price: 1500),
        ]

    static let sharedInstance = ProductDataSource()
    
    private init() {
        
    }
    
    subscript(index: Int) -> Product? {
        if index < products.count {
            return products[index]
        }
        return nil
    }
    
    subscript(id: String) -> Product? {
        return products.first { $0.id == id }
    }
    
    var count: Int {
        return products.count
    }
}
