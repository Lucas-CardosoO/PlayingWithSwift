//
//  ViewController.swift
//  first_project
//
//  Created by Turma Tarde on 4/2/18.
//  Copyright © 2018 Turma Tarde. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var perguntasLabel: UILabel!
    @IBOutlet weak var msgsLabel: UILabel!
    @IBOutlet weak var answerField: UITextField!
    @IBOutlet weak var submitButton: UIButton!
    var myGame = GameController()

    override func viewDidLoad() {
        msgsLabel.isHidden = true
        perguntasLabel.text = myGame.getQuestion()
        answerField.placeholder = "Digite sua resposta"
        
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a
        
        
    }
    
    @IBAction func submitQuestion(_ sender: Any) {
        let acertou = myGame.tryAnswer(guess: answerField.text!)
        
        if acertou{
            msgsLabel.text = myGame.getAcerto()
            perguntasLabel.text = myGame.getQuestion()
            answerField.text = ""
        } else {
            msgsLabel.text = myGame.getErro()
        }
        
        msgsLabel.isHidden = false
    }
    

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

