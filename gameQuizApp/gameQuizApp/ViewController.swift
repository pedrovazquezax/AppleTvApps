//
//  ViewController.swift
//  gameQuizApp
//
//  Created by Pedro Antonio Vazquez Rodriguez on 04/07/18.
//  Copyright © 2018 Pedro Antonio Vazquez Rodriguez. All rights reserved.
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
        setQuestion(question: "What is the Capital of California", answerA: "Cupertino", answerB: "Sacramento", answerC: "San Francisco", answerD: "Los Angeles")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func pressedButton(_ sender: UIButton) {
        checkAnswer(answer: sender.tag, correctAnswer: 2)
        

    }
    func checkAnswer(answer:Int, correctAnswer:Int) {
        if answer == correctAnswer {
            popAlert(status: "Correct!", title: "Whoo! That is the correct response")
        }else{
            popAlert(status:"Wrong!", title: "Bummer, you got it wrong!")
        }
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
    
    func setQuestion(question:String,answerA:String,answerB:String,answerC:String,answerD:String){
        questionLabel.text = question
        answerAButton.setTitle(answerA, for: .normal)
        answerBButton.setTitle(answerB, for: .normal)
        answerCButton.setTitle(answerC, for: .normal)
        answerDButton.setTitle(answerD, for: .normal)
        
    }

}



