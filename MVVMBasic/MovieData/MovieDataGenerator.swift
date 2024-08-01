//
//  MovieDataGenerator.swift
//  MVVMBasic
//
//  Created by Ganpat Jangir on 01/08/24.
//

import Foundation

class MovieDataGenerator {
    static func generateMovieData() -> [String:Any] {
        let dateFormator = DateFormatter()
        dateFormator.dateFormat = "dd-MM-yyyy"
        let releaseDate = dateFormator.date(from: "12-08-2021") as Any
        return ["movieName": "SherShaah", "movieImgeName": "sherShah","isFavourite":true,"director": "Vishnuvardhan","releaseDate": releaseDate,"income":"$300 billion", "rating": 8.3]
    }
}
