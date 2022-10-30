//
//  HomeViewController.swift
//  Food_MVP
//
//  Created by Donia Elshenawy on 21/10/2022.
//

import UIKit
import NVActivityIndicatorView

class HomeViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var activityIndicator: NVActivityIndicatorView!
    
    var presenter: HomeVCPresenter?
    var interactor: FoodInteractor!
    var router: HomeVCRouter!
    let searchController = UISearchController()
   
    override func viewDidLoad() {
        super.viewDidLoad()
        createNavigationController()
        createIndicator()
        setDataTableView()
        presenter?.viewDidLoad()
        navigationItem.searchController = searchController
        navigationItem.hidesSearchBarWhenScrolling = false
        searchController.searchResultsUpdater = self
        
    }
    
    func createNavigationController(){
        navigationController?.navigationBar.tintColor = UIColor(named: "Color")
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor(named: "Color")]
        navigationItem.setHidesBackButton(true, animated: true)
        navigationItem.backButtonTitle = ""
        title = presenter?.getGreeting()
    }
    
    func createIndicator(){
        activityIndicator.color = UIColor(named: "Color")!
        activityIndicator.type = .ballPulse

    }
}
