//
//  ViewController.swift
//  helloword
//
//  Created by Pedro Servicio on 26/04/18.
//  Copyright © 2018 Pedro Servicio. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var label: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        label.text = ""
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func buttonPressed(_ sender: Any) {
        if label.text == ""{
            label.text = "Hello World"
        }else{
            label.text = ""
        }
        
    }
}

