//
//  HomeViewController.swift
//  Food_MVP
//
//  Created by Donia Elshenawy on 21/10/2022.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var greatLabel: UILabel!
    @IBOutlet weak var searchTabBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    var presenter: HomeVCPresenter?
    var interactor: FoodInteractor!
    var router: HomeVCRouter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Good morning"
        setDataTableView()
        presenter?.viewDidLoad()

    }
}
