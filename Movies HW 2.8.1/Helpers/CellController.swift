//
//  CellController.swift
//  Movies HW 2.8.1
//
//  Created by Александр Манжосов on 24.09.2024.
//

import UIKit

class CellController {
    func configure(_ cell: UITableViewCell, with movie: Movie) {
        cell.textLabel?.text = movie.name
        cell.detailTextLabel?.text = movie.releaseDates
        cell.imageView?.image = movie.image
    }
}
