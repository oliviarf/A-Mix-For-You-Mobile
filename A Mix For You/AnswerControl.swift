//
//  MCQuestion.swift
//  A Mix For You
//
//  Created by Olivia Foster on 2019-02-02.
//  Copyright © 2019 Olivia Foster. All rights reserved.
//

import UIKit

class MCQuestion: UIStackView {
    
    //MARK: Properties
    
    private var answerChoices = [UIButton]()


    //MARK: Initialization
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupButtons()
    }
    required init(coder: NSCoder) {
        super.init(coder: coder)
        setupButtons()
    }
    
    //MARK: Button Action
    
    @objc func answerTapped(choice: UIButton) {
        print("uwu")
    }
    
    //MARK: Private Methods
    
    private func setupButtons() {
        
        for _ in 0..<4 {
            let choice = UIButton()
            
            choice.backgroundColor = UIColor.black
            choice.translatesAutoresizingMaskIntoConstraints = false
            choice.heightAnchor.constraint(equalToConstant: 40.0).isActive = true
            choice.widthAnchor.constraint(equalToConstant: 120.0).isActive = true
            
            choice.addTarget(self, action: #selector(MCQuestion.answerTapped(choice:)), for: .touchUpInside)
            
            addArrangedSubview(choice)
            
            answerChoices.append(choice)
        }
    }
    
    
    //MARK: TODO
    //Write method to randomize questions and label buttons
    //with appropriate answer choices
    //Ensure question has not already been asked
    //Ensure all questions are asked before playlist generated
}

