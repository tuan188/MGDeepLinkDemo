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

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
