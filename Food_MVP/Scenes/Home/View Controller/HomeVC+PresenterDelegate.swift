//
//  HomeVC + PresenterDelegate.swift
//  Food_MVP
//
//  Created by Donia Elshenawy on 22/10/2022.
//

import Foundation


extension HomeViewController: HomeView{
    
    func fetchDataSucessful() {
        tableView.reloadData()
    }
    
    func showError(error: String) {
        print(error)
    }
    
    func startAnnimation() {
        activityIndicator.startAnimating()
    }
    
    func stopAnnimation() {
        activityIndicator.stopAnimating()
    }
    
   
//    func didSelect(user: Category) {
//       let vc = DetailsViewController(nibName: "DetailsViewController", bundle: nil)
//        vc.img = user.strCategoryThumb
//        vc.name = user.strCategory
//        vc.decriptionTV = user.strCategoryDescription
//       self.navigationController?.pushViewController(vc, animated: true)
//    }
    
}
