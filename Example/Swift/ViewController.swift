//
//  ViewController.swift
//  Example
//
//  Created by Sergio Fernández Durán on 1/5/16.
//  Copyright © 2016 fdzsergio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func buttonDidPress(sender: AnyObject) {
        self.navigationController?.pushViewController(ViewController(), animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.title = "SFEmptyBackButton"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
