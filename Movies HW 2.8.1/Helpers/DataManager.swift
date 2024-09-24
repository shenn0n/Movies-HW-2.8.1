//
//  DataManager.swift
//  Movies HW 2.8.1
//
//  Created by Александр Манжосов on 23.09.2024.
//

import UIKit

class DataManager {
    
    static let shared = DataManager()
    
    func getMovies() -> [Movie] {
        let movies = [
            Movie(name: "Побег из Шоушенка",
                  releaseDates: "1994",
                  image: UIImage(imageLiteralResourceName: "Movie_1.jpg"),
                  description: MovieDescription.theShawshankRedemption),
            Movie(name: "Тёмный рыцарь",
                  releaseDates: "2008",
                  image: UIImage(imageLiteralResourceName: "Movie_2.jpg"),
                  description: MovieDescription.theDarkKnight),
            Movie(name: "Крёстный отец 2",
                  releaseDates: "1974",
                  image: UIImage(imageLiteralResourceName: "Movie_3.jpg"),
                  description: MovieDescription.theGodfatherPart2),
            Movie(name: "12 разгневанных мужчин",
                  releaseDates: "1957",
                  image: UIImage(imageLiteralResourceName: "Movie_4.jpg"),
                  description: MovieDescription.twelveAngryMen)
        ]
        return movies
    }
    
}
