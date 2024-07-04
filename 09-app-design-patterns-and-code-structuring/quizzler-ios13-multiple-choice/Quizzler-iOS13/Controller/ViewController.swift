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
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var highScoreLabel: UILabel!
    @IBOutlet weak var choice1Btn: UIButton!
    @IBOutlet weak var choice2Btn: UIButton!
    @IBOutlet weak var choice3Btn: UIButton!
    
    

    var quizBrain = QuizBrain()

    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle //
        
        if quizBrain.checkAnswer(userAnswer!) {
            sender.backgroundColor = UIColor.green
        } else {
            sender.backgroundColor = UIColor.red
        }

        quizBrain.updateQuestion()
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(resetBtnColor), userInfo: nil, repeats: false)
        
        updateUI()
    }
    
    @objc func updateUI() {
        choice1Btn.setTitle("\(quizBrain.getChoiceAnswer(answerNum: 0))", for: .normal)
        choice2Btn.setTitle("\(quizBrain.getChoiceAnswer(answerNum: 1))", for: .normal)
        choice3Btn.setTitle("\(quizBrain.getChoiceAnswer(answerNum: 2))", for: .normal)
        questionLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score: \(quizBrain.getScore())"
        highScoreLabel.text = "High Score: \(quizBrain.getHighScore())"
        
    }
    
    @objc func resetBtnColor() {
        choice1Btn.backgroundColor = UIColor.clear
        choice2Btn.backgroundColor = UIColor.clear
        choice3Btn.backgroundColor = UIColor.clear
    }



}

