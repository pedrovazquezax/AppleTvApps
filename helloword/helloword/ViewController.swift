//
//  ViewController.swift
//  helloword
//
//  Created by Pedro Servicio on 26/04/18.
//  Copyright © 2018 Pedro Servicio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var answerBButton: UIButton!
    @IBOutlet weak var answerCButton: UIButton!
    @IBOutlet weak var answerAButton: UIButton!
    @IBOutlet weak var answerDButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressedButton(_ sender: UIButton) {
        questionLabel.text = "\(sender.tag)"
        popAlert(status: "\(sender.tag)", title: "hola")
        
    }
    
    func popAlert(status: String, title:String) {
        let alertController = UIAlertController(title: status, message: title, preferredStyle: .alert)
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel) { (action) in
        }
        alertController.addAction(cancelAction)
        
        let ok = UIAlertAction(title: "OK", style: .default) { (action) in
        }
        alertController.addAction(ok)
        
        self.present(alertController, animated: true) { 
        }
    }
    

}

