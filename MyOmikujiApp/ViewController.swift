//
//  ViewController.swift
//  MyOmikujiApp
//
//  Created by xxxxx on 2020/06/07.
//  Copyright © 2020 xxxxx. All rights reserved.
//

import UIKit

class ViewController:
UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    @IBAction func getOmilluji(_ sender: Any) {
        let results = ["大吉","中吉","末吉","大凶"]
        let random = arc4random_uniform(UInt32(results.count))
        self.myLabel.text = results[Int(random)]
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        myLabel.layer.masksToBounds = true
        myLabel.layer.cornerRadius = myLabel.bounds.width / 2
    }


}

