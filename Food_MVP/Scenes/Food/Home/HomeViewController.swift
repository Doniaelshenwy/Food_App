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
    
    var presenter: HomeVCPresenter!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        title = "Good morning"
        setDataTableView()
        presenter = HomeVCPresenter(homeView: self)
        presenter.viewDidLoad()

    }
}
