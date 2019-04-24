//
//  Question.swift
//  A Mix For You
//
//  Created by Olivia Foster on 2019-02-07.
//  Copyright © 2019 Olivia Foster. All rights reserved.
//

import UIKit

class Question {
    
    //MARK: Properties
    
    let question: String
    let answerA: Answer
    let answerB: Answer
    let answerC: Answer
    let answerD: Answer
    
    
    //MARK: Initialization
    
    init(question: String, answerA: Answer, answerB: Answer, answerC: Answer, answerD: Answer) {
        
        self.question = question
        self.answerA = answerA
        self.answerB = answerB
        self.answerC = answerC
        self.answerD = answerD
    }
    
    
    
}
