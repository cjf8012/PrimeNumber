//
//  ViewController.swift
//  Prime number
//
//  Created by D7703_23 on 2018. 3. 29..
//  Copyright © 2018년 D7703_23. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtF: UITextField!
    @IBOutlet weak var Resultlabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func Check(_ sender: Any) {
       var isPrime = true
        let num = Int(txtF.text!)
        
        if num == 1 {
            isPrime = false
        }
        
        if num != 1 && num != 2 {
            for i in 2 ..< num! {
                if num! % i == 0 {
                    isPrime = false
                }
            }
        }
        
        if isPrime == true {
            Resultlabel.text = "prime number"
        } else {
            Resultlabel.text = "Not prime number"
        }
    }
  

        
    
    
    
    @IBAction func Reset(_ sender: Any) {
        Resultlabel.text = ""
        txtF.text = ""
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

