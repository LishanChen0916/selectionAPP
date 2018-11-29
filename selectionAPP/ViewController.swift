//
//  ViewController.swift
//  selectionAPP
//
//  Created by Lishan on 2018/11/29.
//  Copyright © 2018 Lishan. All rights reserved.
//

import UIKit
import GameplayKit

struct Qna{
    var question:String
    var answer:[String]
    var correctAnswer:Int
}

class ViewController: UIViewController {
    @IBOutlet weak var ScoreTextLabel: UILabel!
    @IBOutlet weak var ScoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var answerSheetA: UIButton!
    @IBOutlet weak var answerSheetB: UIButton!
    @IBOutlet weak var answerSheetC: UIButton!
    @IBOutlet weak var answerSheetD: UIButton!
    @IBOutlet weak var startButton: UIButton!
    
    var score = 0                   //總得分數
    var questionNumber = 5          //總題數
    var correctNumber = 0           //答對題數
    var incorrectNumber = 0         //答錯題數
    var correctAnswerNumber = 0     //當題之正確答案
    var i = 0                       //計算目前的題目index
    
    var questionArray = [Qna(question: "在哈利波特小說中不會魔法的人稱為？ ", answer: ["A. 麻瓜", "B. 南瓜", "C.地瓜", "D. 小蝸"], correctAnswer: 1),Qna(question: "亞洲最帥的男子是誰？ ", answer: ["A. 彼得潘", "B. 潘世穎", "C. Peter Pan",  "D. 以上皆是"], correctAnswer: 4),Qna(question: "請問下列何者是台中的名產? ", answer: ["A. 太陽餅", "B. 蔥油餅", "C. 甲乙丙", "D. 紅豆餅"], correctAnswer: 1),Qna(question: "放大鏡的鏡片，是哪一種面鏡? ", answer: ["A. 凹透鏡", "B. 高進", "C. 尿失禁", "D. 凸透鏡"], correctAnswer: 4),Qna(question: "請問梅雨的形成主要原因？", answer: ["A. 從天空掉梅子下來", "B. 季風交替", "C. 季節交替", "D. 鬼抓交替"], correctAnswer: 2)]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        answerSheetA.isHidden = true
        answerSheetB.isHidden = true
        answerSheetC.isHidden = true
        answerSheetD.isHidden = true
        questionLabel.isHidden = true
        startButton.isHidden = false
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func startGame(_ sender: UIButton) {
        questionArray.shuffle()
        
        questionLabel.isHidden = false
        answerSheetA.isHidden = false
        answerSheetB.isHidden = false
        answerSheetC.isHidden = false
        answerSheetD.isHidden = false
        
        i = 0
        score = 0
        ScoreLabel.text = "---"
        startButton.isHidden = true
        
        questionLabel.text = questionArray[0].question
        answerSheetA.setTitle(questionArray[0].answer[0], for: .normal)
        answerSheetB.setTitle(questionArray[0].answer[1], for: .normal)
        answerSheetC.setTitle(questionArray[0].answer[2], for: .normal)
        answerSheetD.setTitle(questionArray[0].answer[3], for: .normal)
        correctAnswerNumber = questionArray[0].correctAnswer
        
        i=i+1
    }
    
    
    @IBAction func selectA(_ sender: UIButton) {
        if i < questionNumber {
            if correctAnswerNumber == 1 {
                score += 10
                ScoreLabel.text = String(score)
            }
            else{
                score -= 10
                ScoreLabel.text = String(score)
            }
            questionLabel.text = questionArray[i].question
            answerSheetA.setTitle(questionArray[i].answer[0], for: .normal)
            answerSheetB.setTitle(questionArray[i].answer[1], for: .normal)
            answerSheetC.setTitle(questionArray[i].answer[2], for: .normal)
            answerSheetD.setTitle(questionArray[i].answer[3], for: .normal)
            correctAnswerNumber = questionArray[i].correctAnswer
            i=i+1
        }
        else{
            i = 0
            startButton.setTitle("Restart", for: .normal)
            startButton.isHidden = false
        }
    }
    
    @IBAction func selectB(_ sender: UIButton) {
        if i < questionNumber {
            if correctAnswerNumber == 2 {
                score += 10
                ScoreLabel.text = String(score)
            }
            else{
                score -= 10
                ScoreLabel.text = String(score)
            }
            questionLabel.text = questionArray[i].question
            answerSheetA.setTitle(questionArray[i].answer[0], for: .normal)
            answerSheetB.setTitle(questionArray[i].answer[1], for: .normal)
            answerSheetC.setTitle(questionArray[i].answer[2], for: .normal)
            answerSheetD.setTitle(questionArray[i].answer[3], for: .normal)
            correctAnswerNumber = questionArray[i].correctAnswer
            i=i+1
        }
        else{
            i = 0
            startButton.setTitle("Restart", for: .normal)
            startButton.isHidden = false
        }
    }
    
    @IBAction func selectC(_ sender: UIButton) {
        if i < questionNumber {
            if correctAnswerNumber == 3 {
                score += 10
                ScoreLabel.text = String(score)
            }
            else{
                score -= 10
                ScoreLabel.text = String(score)
            }
            questionLabel.text = questionArray[i].question
            answerSheetA.setTitle(questionArray[i].answer[0], for: .normal)
            answerSheetB.setTitle(questionArray[i].answer[1], for: .normal)
            answerSheetC.setTitle(questionArray[i].answer[2], for: .normal)
            answerSheetD.setTitle(questionArray[i].answer[3], for: .normal)
            correctAnswerNumber = questionArray[i].correctAnswer
            i=i+1
        }
        else{
            i = 0
            startButton.setTitle("Restart", for: .normal)
            startButton.isHidden = false
        }
    }
    
    @IBAction func selectD(_ sender: UIButton) {
        if i < questionNumber {
            if correctAnswerNumber == 4 {
                score += 10
                ScoreLabel.text = String(score)
            }
            else{
                score -= 10
                ScoreLabel.text = String(score)
            }
            questionLabel.text = questionArray[i].question
            answerSheetA.setTitle(questionArray[i].answer[0], for: .normal)
            answerSheetB.setTitle(questionArray[i].answer[1], for: .normal)
            answerSheetC.setTitle(questionArray[i].answer[2], for: .normal)
            answerSheetD.setTitle(questionArray[i].answer[3], for: .normal)
            correctAnswerNumber = questionArray[i].correctAnswer
            i=i+1
        }
        else{
            i = 0
            startButton.setTitle("Restart", for: .normal)
            startButton.isHidden = false
        }
    }
}
