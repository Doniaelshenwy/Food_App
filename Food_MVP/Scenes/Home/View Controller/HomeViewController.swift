//
//  HomeViewController.swift
//  Food_MVP
//
//  Created by Donia Elshenawy on 21/10/2022.
//

import UIKit

class HomeViewController: UIViewController {


    @IBOutlet weak var tableView: UITableView!
    
    var presenter: HomeVCPresenter?
    var interactor: FoodInteractor!
    var router: HomeVCRouter!
    
    let searchController = UISearchController()
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.navigationBar.largeTitleTextAttributes = [NSAttributedString.Key.foregroundColor: UIColor(named: "Color")]
        navigationItem.setHidesBackButton(true, animated: true)
        navigationItem.backButtonTitle = ""
        title = "Good morning"
        setDataTableView()
        presenter?.viewDidLoad()

        navigationItem.searchController = searchController
        
       
        let today = Date()
        // 2. Pick the date components
        let hours   = (Calendar.current.component(.hour, from: today))
        let minutes = (Calendar.current.component(.minute, from: today))
        let seconds = (Calendar.current.component(.second, from: today))
        // 3. Show the time
        print("\(hours):\(minutes)")
        
//        let currentDateTime = Date()
//
//
//        // initialize the date formatter and set the style
//        let formatter = DateFormatter()
//        // "10:52:30 PM"
//        formatter.timeStyle = .medium
//        formatter.dateStyle = .none
//        let t = formatter.string(from: currentDateTime)
//
//        for i in t {
//            if i == "A"{
//                print("a")
//            }
//            else if i == "p"{
//                print("pp")
//            }
//        }
       


    }
}
