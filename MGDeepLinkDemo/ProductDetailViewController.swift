//
//  ProductDetailViewController.swift
//  MGDeepLinkDemo
//
//  Created by Tuan Truong on 1/23/17.
//  Copyright © 2017 Tuan Truong. All rights reserved.
//

import UIKit

class ProductDetailViewController: UIViewController {
    
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    
    var product: Product!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        productNameLabel.text = product.name
        productPriceLabel.text = product.priceString
    }
    
    func setupCloseButton() -> Void {
        let closeButton = UIBarButtonItem(title: "Close", style: .plain, target: self, action: #selector(close))
        self.navigationItem.leftBarButtonItem = closeButton
    }
    
    func close() -> Void {
        self.dismiss(animated: true, completion: nil)
    }
}
