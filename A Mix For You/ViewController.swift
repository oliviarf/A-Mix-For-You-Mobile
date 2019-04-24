//
//  ViewController.swift
//  A Mix For You
//
//  Created by Olivia Foster on 2018-12-20.
//  Copyright © 2018 Olivia Foster. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var newPlaylist = Playlist(title: "New Playlist");
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
    }
    
    
    @IBAction func newPlaylistButton(_ sender: Any) {
        if (questionViews.isEmpty){
            // show playlist page (loading?)
        }
        else {
        newQuestion()
        }
    }
    
    
    @IBAction func upbeatAttributeButton(_ sender: Any) {
        newPlaylist.danceability += 0.75
        newPlaylist.energy += 0.75
        newPlaylist.valence += 0.75
        
        newQuestion()
    }
    
    @IBAction func relaxedAttributeButton(_ sender: Any) {
        newPlaylist.danceability += 0.25
        newPlaylist.energy += 0.25
        newPlaylist.valence += 0.25
        
        newQuestion()
    }
    
    @IBAction func sadAttributeButton(_ sender: Any) {
        newPlaylist.danceability += 0
        newPlaylist.energy += 0
        newPlaylist.valence += 0
        
        newQuestion()
    }
    
    @IBAction func partyAttributeButton(_ sender: Any) {
        newPlaylist.danceability += 1
        newPlaylist.energy += 1
        newPlaylist.valence += 1
        
        newQuestion()
    }
    
    @IBAction func rockGenreButton(_ sender: Any) {
        
        newQuestion()
    }
    
    @IBAction func kpopGenreButton(_ sender: Any) {
        newPlaylist.danceability += 1
        newPlaylist.energy += 1
        newPlaylist.valence += 1
        
        newQuestion()
    }
    
    @IBAction func hiphopGenreButton(_ sender: Any) {
        newPlaylist.danceability += 1
        newPlaylist.energy += 1
        newPlaylist.valence += 1
        
        newQuestion()
    }
    
    @IBAction func indieGenreButton(_ sender: Any) {
        newPlaylist.danceability += 1
        newPlaylist.energy += 1
        newPlaylist.valence += 1
        
        newQuestion()
    }
    
    fileprivate func newQuestion() {
        let i = UInt32(questionViews.count)
        let random = Int(arc4random() % i)
        let nextQuestion = questionViews[random]
        questionViews.remove(at: random)
        let questionView = storyboard?.instantiateViewController(withIdentifier: nextQuestion)
        
        self.present(questionView!, animated: true, completion: nil)
    }
}


