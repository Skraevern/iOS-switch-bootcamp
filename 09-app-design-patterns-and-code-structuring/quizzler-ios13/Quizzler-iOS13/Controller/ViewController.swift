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
    
    var quizBrain = QuizBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle // True or False
        quizBrain.checkAnswer(userAnswer!)
        
        if userAnswer == actualAnswer {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(resetBtnColor), userInfo: nil, repeats: false)
        updateUI()
    }
    
    @objc func updateUI() {
        questionLabel.text = quiz[questionNumber].text
        progressBar.progress = Float(questionNumber + 1) / Float(quiz.count)
    }
    
    @objc func resetBtnColor() {
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear	
    }



}

