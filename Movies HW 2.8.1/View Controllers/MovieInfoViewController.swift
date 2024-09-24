//
//  MovieInfoViewController.swift
//  Movies HW 2.8.1
//
//  Created by Александр Манжосов on 23.09.2024.
//

import UIKit

class MovieInfoViewController: UIViewController {

    @IBOutlet var movieStackView: UIStackView!
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var movieName: UILabel!
    @IBOutlet var movieReleaseDate: UILabel!
    @IBOutlet var movieDescription: UITextView!
    
    var movie: Movie!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI(with: view.bounds.size)
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        updateUI(with: size)
    }
    
}

extension MovieInfoViewController {
    
    func updateUI(with size: CGSize) {
        
        let isVertical = size.width < size.height
        movieStackView.axis = isVertical ? .vertical : .horizontal
        
        title = movie.name
        imageView.image = movie.image
        movieName.text = movie.name
        movieReleaseDate.text = movie.releaseDates
        movieDescription.text = movie.description
    }
    
}
