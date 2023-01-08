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
        ["Swift is a compiled programming language.", true],
        ["Swift is an object-oriented language.", true],
        ["Swift was developed by Apple Inc.", true],
        ["Swift is compatible with both iOS and macOS.", true],
        ["Swift is statically typed.", true],
        ["Swift allows you to mix imperative and functional programming paradigms.", true],
        ["Swift does not support type inference.", false],
        ["Swift does not have a garbage collector.", false],
        ["Swift does not support exception handling.", false],
        ["Swift does not have a native string interpolation feature.", false]
    ]
    
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle?.lowercased()
        let actualAnswer = questions[questionNumber][1]
        let actualAnswerString = actualAnswer as! Bool ? "true" : "false"
        if userAnswer == actualAnswerString {
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
        questionLabel.text = questions[questionNumber][0] as? String
    }
}

