//
//  question.swift
//  Soru cevap
//
//  Created by ıdk on 6.09.2019.
//

import Foundation

class question{
    let questionText : String
    let answer : Bool
    
    init(text:String ,correctAnswer:Bool){
        questionText = text
        answer = correctAnswer
    }
}
