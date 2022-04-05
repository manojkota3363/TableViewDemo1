//
//  ViewController.swift
//  TableViewDemo1
//
//  Created by Kota,Manoj on 3/29/22.
//

import UIKit
class Product{
    var productName: String?
    var productCategory:String?
    init(productName: String,productCategory:String){
        self.productName=productName
        self.productCategory=productCategory
    }
}//end of product class

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return productsArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //create a cell
        var cell=tableviewOutlet.dequeueReusableCell(withIdentifier: "reusableCell", for: indexPath)
        //assign data to cell.
        cell.textLabel?.text = productsArray[indexPath.row].productName
        return cell;
    }
    
    var productsArray=[Product]()
    @IBOutlet weak var tableviewOutlet: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        tableviewOutlet.delegate = self
        tableviewOutlet.dataSource = self
        let product1=Product(productName: "MacBookAir", productCategory: "Laptop")
        productsArray.append(product1)
        let product2=Product(productName: "iPhone", productCategory: "Mobile phone")
        productsArray.append(product2)
        let product3=Product(productName: "Airpods", productCategory: "earphones")
        productsArray.append(product3)
        let product4=Product(productName: "SE iphone", productCategory: "Mobile phone small")
        productsArray.append(product4)
        let product5=Product(productName: "Iwatch se", productCategory: "Wrist watch")
        productsArray.append(product5)
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transistion = segue.identifier
        if transistion == "detailsSegue"{
            let destination = segue.destination as!
            DetailsViewController
            destination.product=productsArray[(tableviewOutlet.indexPathForSelectedRow?.row)!]
        }
    }

}

