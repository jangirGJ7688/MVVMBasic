//
//  MovieModel.swift
//  MVVMBasic
//
//  Created by Ganpat Jangir on 01/08/24.
//

import Foundation

struct MovieModel {
    var movieName = ""
    var movieImageName = ""
    var isFavorite = false
    var director = ""
    var releaseDate = Date()
    var income = "$0.0"
    var rating = 0.0
    
    init(data: [String: Any]) {
        movieName = data["movieName"] as! String
        movieImageName = data["movieImgeName"] as! String
        isFavorite = data["isFavourite"] as! Bool
        director = data["director"] as! String
        releaseDate = data["releaseDate"] as! Date
        income = data["income"] as! String
        rating = data["rating"] as! Double
    }
}
