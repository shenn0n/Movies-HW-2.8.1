//
//  MovieListTableViewController.swift
//  Movies HW 2.8.1
//
//  Created by Александр Манжосов on 23.09.2024.
//

import UIKit

class MovieListTableViewController: UITableViewController {
    
    var movies: [Movie] = []
    var cellController = CellController()

    override func viewDidLoad() {
        super.viewDidLoad()
        movies = DataManager.shared.getMovies()
    }



}

extension MovieListTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return movies.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CellMovie", for: indexPath)
        
        let movie = movies[indexPath.row] // принимает конкретный фильм
        cellController.configure(cell, with: movie) // настраиваем ячейку по конкретному фильму
        
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard segue.identifier == "segueInfo" else { return }
        guard let indexPath = tableView.indexPathForSelectedRow else { return } // indexPath для выбранной ячейки
        
        let movie = movies[indexPath.row] // movie по выбранной ячейке
        
        let movieInfoVC = segue.destination as! MovieInfoViewController
        movieInfoVC.movie = movie
    }
    
    
}
