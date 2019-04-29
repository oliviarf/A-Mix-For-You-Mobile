//
//  Playlist.swift
//  A Mix For You
//
//  Created by Olivia Foster on 2019-02-07.
//  Copyright © 2019 Olivia Foster. All rights reserved.

import UIKit

class Playlist {
    
    //MARK: Properties
    
    var title: String
    var seedArtists: Array<String>
    var seedGenre: String
    var danceability: Double
    var energy: Double
    var valence: Double
    
    
    //MARK: Initialization
    
    init(title: String) {
        self.title = title
        self.seedArtists = [String]()
        self.seedGenre = ""
        self.danceability = 0
        self.energy = 0
        self.valence = 0
        
    }
    
    
}
