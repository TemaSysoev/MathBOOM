//
//  ViewController.swift
//  MathBOOM
//
//  Created by Tema Sysoev on 21.04.2018.
//  Copyright © 2018 Tema Sysoev. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var mainLabel: UILabel!
    var a1 = arc4random_uniform(10)
    var a2 = arc4random_uniform(10)
    var b = UInt32()
    override func viewDidLoad() {
        super.viewDidLoad()
        //Пишем механизм
        b = a1 + a2
        mainLabel.text = "\(a1) + \(a2)"
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

