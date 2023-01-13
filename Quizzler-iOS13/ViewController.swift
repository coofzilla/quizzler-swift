//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let questions = [
        Question(text: "Swift is a compiled programming language.", answer: "True"),
        Question(text:"Swift is an object-oriented language.", answer: "True"),
        Question(text: "Swift was developed by Google", answer: "False"),
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle?.lowercased()
        let actualAnswer = questions[questionNumber].answer.lowercased()
        
        if userAnswer == actualAnswer {
            print("Right")
        } else {
            print("Wrong")
        }
        
        let quizEnd = questionNumber == questions.count - 1
        if quizEnd {
            questionNumber = 0
        } else {
            questionNumber += 1
        }
        updateUI()
    }
    
    func updateUI(){
        questionLabel.text = questions[questionNumber].text
    }
}

