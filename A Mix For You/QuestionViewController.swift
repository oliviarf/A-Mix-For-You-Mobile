//
//  QuestionViewController.swift
//  A Mix For You
//
//  Created by Olivia Foster on 2019-07-19.
//  Copyright © 2019 Olivia Foster. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController{
    
    lazy var rootViewController = ViewController()
    
    @IBAction func upbeatAttributeButton(_ sender: Any) {
        newPlaylist.danceability += 0.75
        newPlaylist.energy += 0.75
        newPlaylist.valence += 0.75
        
        rootViewController.newQuestion()
    }
    
    @IBAction func relaxedAttributeButton(_ sender: Any) {
        newPlaylist.danceability += 0.25
        newPlaylist.energy += 0.25
        newPlaylist.valence += 0.25
        
        rootViewController.newQuestion()
    }
    
    @IBAction func sadAttributeButton(_ sender: Any) {
        newPlaylist.danceability += 0
        newPlaylist.energy += 0
        newPlaylist.valence += 0
        
        rootViewController.newQuestion()
    }
    
    @IBAction func partyAttributeButton(_ sender: Any) {
        newPlaylist.danceability += 1
        newPlaylist.energy += 1
        newPlaylist.valence += 1
        
        rootViewController.newQuestion()
    }
    
    @IBAction func rockGenreButton(_ sender: Any) {
        newPlaylist.seedArtists.append("0Ak6DLKHtpR6TEEnmcorKA") //THE VACCINES
        newPlaylist.seedArtists.append("2xaAOVImG2O6lURwqperlD") //CATFISH AND THE BOTTLEMEN
        newPlaylist.seedGenre = "rock"
        print(newPlaylist.seedArtists)
        
        rootViewController.newQuestion()
    }
    
    @IBAction func kpopGenreButton(_ sender: Any) {
        newPlaylist.seedArtists.append("4Kxlr1PRlDKEB0ekOCyHgX") //BIGBANG
        newPlaylist.seedArtists.append("6MoXcK2GyGg7FIyxPU5yW6") //SUNMI
        newPlaylist.seedGenre = "k_pop"
        print(newPlaylist.seedArtists)
        
        rootViewController.newQuestion()
    }
    
    @IBAction func hiphopGenreButton(_ sender: Any) {
        newPlaylist.seedArtists.append("MZsBdqDrRTJihTHQrO6Dq") //JOJI
        newPlaylist.seedArtists.append("13ubrt8QOOCPljQ2FL1Kca") //A$AP ROCKY
        newPlaylist.seedGenre = "hip_hop"
        print(newPlaylist.seedArtists)
        
        rootViewController.newQuestion()
    }
    
    @IBAction func indieGenreButton(_ sender: Any) {
        newPlaylist.seedArtists.append("6pmxr66tMAePxzOLfjGNcX") //BEIRUT
        newPlaylist.seedArtists.append("0n94vC3S9c3mb2HyNAOcjg") //THE HEAD AND THE HEART
        newPlaylist.seedGenre = "indie"
        print(newPlaylist.seedArtists)
        
        rootViewController.newQuestion()
    }
    
    func createNewPlaylist(){
        let targetDanceability: String = String(format: "%.2f", newPlaylist.danceability/8)
        let targetEnergy: String = String(format: "%.2f", newPlaylist.energy/8)
        let targetValence: String = String(format: "%.2f", newPlaylist.valence/8)
        print(newPlaylist.seedArtists.count)
        
        let artist1: String = newPlaylist.seedArtists.first!
        let artist2: String = newPlaylist.seedArtists.last!
        
        let genre: String = newPlaylist.seedGenre
        
        let searchURL: String = "https://api.spotify.com/v1/recommendations?limit=8&seed_artists=" + artist1 + "%20" + artist2 + "&seed_genres=" + genre + "&target_danceability=" + targetDanceability +
            "&target_energy=" + targetEnergy + "&target_valence=" + targetValence
        
//        rootAppDelegate.callAlamo(url: searchURL)
    }
}

