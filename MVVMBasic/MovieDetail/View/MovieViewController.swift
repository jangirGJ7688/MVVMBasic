//
//  ViewController.swift
//  MVVMBasic
//
//  Created by Ganpat Jangir on 01/08/24.
//

import UIKit

class MovieViewController: UIViewController {
    
    // MARK: Properties
    @IBOutlet weak var backgroundImg: UIImageView!
    @IBOutlet weak var movieNameLbl: UILabel!
    @IBOutlet weak var movieImgView: UIImageView!
    @IBOutlet weak var directorNameLbl: UILabel!
    @IBOutlet weak var releaseDateLbl: UILabel!
    @IBOutlet weak var incomeLbl: UILabel!
    @IBOutlet weak var ratingLbl: UILabel!
    @IBOutlet weak var favouriteLbl: UIButton!
    
    private var vm: MovieDetailVM = MovieDetailVM()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        vm.viewDidLoad()
        setupUI()
        setupData()
    }

    @IBAction func favouriteBtnClick(_ sender: Any) {
        vm.updateFavouriteStatus()
        setupBtnUI()
    }
    
    private func setupUI() {
        backgroundImg.image = UIImage(named: "bg")
    }
    
    private func setupData() {
        movieNameLbl.text = vm.movie?.movieName
        movieImgView.image = UIImage(named: vm.movie?.movieImageName ?? "")
        directorNameLbl.text = vm.movie?.director
        releaseDateLbl.text = vm.updateDate(vm.movie?.releaseDate)
        incomeLbl.text = vm.movie?.income
        if let rating = vm.movie?.rating {
            ratingLbl.text = String(rating)
        }
        setupBtnUI()
    }
    
    private func setupBtnUI() {
        favouriteLbl.setImage(UIImage(named: vm.movie?.isFavorite ?? false ? "selectedHeart" : "unselectedHeart"), for: .normal)
    }
}

