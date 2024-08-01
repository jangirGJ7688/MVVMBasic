//
//  MovieDetailVM.swift
//  MVVMBasic
//
//  Created by Ganpat Jangir on 01/08/24.
//

import Foundation

class MovieDetailVM {
    
    var movie: MovieModel?
    
    func viewDidLoad() {
        movie = MovieModel(data: MovieDataGenerator.generateMovieData())
    }
    
    func updateDate(_ date: Date?) -> String {
        if let date = date {
            let dateFormater = DateFormatter()
            dateFormater.dateFormat = "MMMM dd,yyyy"
            return dateFormater.string(from: date)
        }
        return ""
    }
    
    func updateFavouriteStatus() {
        if let status = movie?.isFavorite {
            movie?.isFavorite = !status
        }
    }
}
