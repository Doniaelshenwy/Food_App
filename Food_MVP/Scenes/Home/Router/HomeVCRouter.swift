//
//  HomeVCRouter.swift
//  Food_MVP
//
//  Created by Donia Elshenawy on 24/10/2022.
//

import Foundation
import UIKit

class HomeVCRouter{
    
    class func createHomeVC() -> UIViewController{
        // view interactor presenter router
        let homeView = HomeViewController(nibName: "HomeViewController", bundle: nil)
        let interactor = FoodInteractor()
        let router = HomeVCRouter()
        let presenter = HomeVCPresenter(homeView: homeView, foodIntractor: interactor, foodRouter: router)
        homeView.presenter = presenter
        return homeView
    }
    
    func navigateToDetalisScreen(from view: HomeView?,food: Category){
        let detailsVC = DetailsVCRouter.createDetailsVC(food: food)
        if let vc = view as? UIViewController{
            vc.navigationController?.pushViewController(detailsVC, animated: true)
        }
    }
}
