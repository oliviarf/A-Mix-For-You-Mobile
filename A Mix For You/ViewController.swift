//
//  ViewController.swift
//  A Mix For You
//
//  Created by Olivia Foster on 2018-12-20.
//  Copyright © 2018 Olivia Foster. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController{

    lazy var rootAppDelegate = AppDelegate()
    lazy var rootQuestionView = QuestionViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    @IBAction func connectToSpotify(_ sender: Any) {
        didTapConnect()
    }
    
    @IBAction func newPlaylistButton(_ sender: Any) {
        newQuestion()
    }
    
    @objc func didTapConnect() {

        let scope: SPTScope = [.appRemoteControl, .playlistReadPrivate]
        
            rootAppDelegate.sessionManager.initiateSession(with: scope, options: .clientOnly)
            print("Init session called")
    }
    
    func newQuestion() {
        if (questionViews.isEmpty){
            let loadingScreen = storyboard?.instantiateViewController(withIdentifier: "LoadingScreen")
            self.present(loadingScreen!, animated: true, completion: nil)
            rootQuestionView.createNewPlaylist()
        }
        else{
            let i = UInt32(questionViews.count)
            let random = Int(arc4random() % i)
            let nextQuestion = questionViews[random]
            questionViews.remove(at: random)
            let questionView = storyboard?.instantiateViewController(withIdentifier: nextQuestion) as! QuestionViewController
            
            self.present(questionView, animated: true, completion: nil)
        }
    }
    
}


