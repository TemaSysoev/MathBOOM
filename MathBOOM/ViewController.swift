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
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button3: UIButton!
    
    var a1 = arc4random_uniform(10)
    var a2 = arc4random_uniform(10)
    var b = UInt32()
    
    var selector = arc4random_uniform(6) + 1
    
    var timer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(ViewController.updateTimer)), userInfo: nil, repeats: true)
        //Пишем механизм
        timerLabel.text = "10"
        b = a1 + a2
        mainLabel.text = "\(a1) + \(a2)"
        
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBAction func answer1(_ sender: Any) {
        if UInt32((button1.titleLabel?.text)!) == b {
            timerLabel.text = "10"
        } else {
            endAction()
        }
        updateCounts()
    }
    @IBAction func answer2(_ sender: Any) {
        if UInt32((button2.titleLabel?.text)!) == b {
            timerLabel.text = "10"
        } else {
            endAction()
        }
        updateCounts()
    }
    @IBAction func answer3(_ sender: Any) {
        if UInt32((button3.titleLabel?.text)!) == b {
            timerLabel.text = "10"
        } else {
            endAction()
        }
        updateCounts()
    }
    func endAction(){}
    func updateCounts(){
        a1 = arc4random_uniform(10)
        a2 = arc4random_uniform(10)
        b = a1 + a2
        
        selector = arc4random_uniform(6) + 1
        if selector == 1 {
            button1.titleLabel?.text = "\(b)"
            button2.titleLabel?.text = "\(b - selector)"
            button3.titleLabel?.text = "\(b + selector)"
        }
        if selector == 2 {
            button1.titleLabel?.text = "\(b + selector)"
            button2.titleLabel?.text = "\(b)"
            button3.titleLabel?.text = "\(b - selector)"
        }
        if selector == 3 {
            button1.titleLabel?.text = "\(b + selector)"
            button2.titleLabel?.text = "\(b - selector)"
            button3.titleLabel?.text = "\(b)"
        }
        if selector == 4 {
            button1.titleLabel?.text = "\(b)"
            button2.titleLabel?.text = "\(b + selector)"
            button3.titleLabel?.text = "\(b - selector)"
        }
        if selector == 5 {
            button1.titleLabel?.text = "\(b - selector)"
            button2.titleLabel?.text = "\(b)"
            button3.titleLabel?.text = "\(b + selector)"
        }
        if selector == 6 {
            button1.titleLabel?.text = "\(b - selector)"
            button2.titleLabel?.text = "\(b + selector)"
            button3.titleLabel?.text = "\(b)"
        }
    }
    @objc func updateTimer(){
        timerLabel.text = "\(Int(timerLabel.text!)! - 1)"
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

