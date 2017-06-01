//
//  PartyRock.swift
//  PartyRockApp
//
//  Created by Ricardo Herrera Petit on 5/31/17.
//  Copyright © 2017 Ricardo Herrera Petit. All rights reserved.
//

import Foundation

class PartyRock {
    
    private var _imageURL : String!
    private var _videoURL : String!
    private var _videoTitlte: String!
    
    
    var imageURL :String {
        return _imageURL
    }
    
    var videoURL: String {
        return _videoURL
    }
    
    var videoTitle: String {
        return _videoTitlte
    }
    
    init(imageURL:String, videoURL: String, videoTitle:String) {
        _imageURL = imageURL
        _videoURL = videoURL
        _videoTitlte = videoTitle
    }
    
}
