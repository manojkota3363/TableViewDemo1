//
//  DetailsViewController.swift
//  TableViewDemo1
//
//  Created by Kota,Manoj on 3/29/22.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var displayLabelOutlet: UILabel!
    var product:Product?
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        displayLabelOutlet.text="The product \((product?.productName)!) is of \((product?.productCategory)!) category."
    }
    

   

}
