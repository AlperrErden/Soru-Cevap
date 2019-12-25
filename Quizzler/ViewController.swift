//
//  ViewController.swift
//  Quizzler
//
//  Created by Alper Erden 05/09/2019.
//  Copyright (c) AlperErden All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0
    
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet var progressBar: UIView!
    @IBOutlet weak var progressLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let firstQuestion = allQuestions.list[0]
        questionLabel.text = firstQuestion.questionText
    }
    
    
    @IBAction func answerPressed(_ sender: AnyObject) {
        if sender.tag == 1{
            pickedAnswer = true
        }
        else if sender.tag == 2 {
            pickedAnswer = false
        }
        checkAnswer()
        questionNumber = questionNumber + 1
        
        nextQuestion()
        
    }
    
    
    func updateUI() {
        scoreLabel.text = " Skorunuz : \(score)"
        progressLabel.text = "\(questionNumber + 1 ) / 13"
        progressBar.frame.size.width = (view.frame.size.width / 13 ) * CGFloat(questionNumber + 1)
        
        
    }
    
    
    func nextQuestion() {
        
        if questionNumber <= 12 {
            questionLabel.text = allQuestions.list[questionNumber].questionText
        }
        else {
            let alert = UIAlertController(title: "Mükemmel", message: "Bütün soruları çözdün tekrar çözmek ister misin?", preferredStyle: .alert)
            
            let restartAction = UIAlertAction(title: "Restart", style: .default, handler: { UIAlertAction in
                self.startOver()
                
            })
            
            alert.addAction(restartAction)
            
            present(alert, animated: true, completion: nil)
        }
        
    }
    
    
    func checkAnswer() {
        let correctAnswer = allQuestions.list[questionNumber].answer
        if correctAnswer == pickedAnswer {
            print("Doğru Cevap")
            score = score + 1
            updateUI()
            
        }
        else {
            print("Yanlış Cevap")
        }
    }
    
    
    func startOver() {
        questionNumber = 0
        nextQuestion()
        score = 0
    }
    
    
    
}
