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
}
