//
//  ProductListViewController.swift
//  MGDeepLinkDemo
//
//  Created by Tuan Truong on 1/23/17.
//  Copyright © 2017 Tuan Truong. All rights reserved.
//

import UIKit

class ProductListViewController: UIViewController {
    
    let productDataSource = ProductDataSource.sharedInstance
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier! == "showProductDetail" {
            let vc = segue.destination as! ProductDetailViewController
            vc.product = sender as! Product
        }
    }

}

extension ProductListViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productDataSource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductCell", for: indexPath)
        if let product = productDataSource[indexPath.row] {
            cell.textLabel?.text = product.name
            cell.detailTextLabel?.text = product.priceString
        }
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if let product = productDataSource[indexPath.row] {
            self.performSegue(withIdentifier: "showProductDetail", sender: product)
        }
        
    }
}


