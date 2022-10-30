//
//  HomeVC+UISearchDelegate.swift
//  Food_MVP
//
//  Created by Donia Elshenawy on 30/10/2022.
//

import Foundation
import UIKit

extension HomeViewController: UISearchResultsUpdating{
    func updateSearchResults(for searchController: UISearchController) {
        presenter?.createSearch(searchController: searchController)
    }
}
