//
//  DetailsVCRouter.swift
//  Food_MVP
//
//  Created by Donia Elshenawy on 27/10/2022.
//

import Foundation
import UIKit

class DetailsVCRouter{
    class func createDetailsVC(food: Category)-> UIViewController{
        let view = DetailsViewController(nibName: "DetailsViewController", bundle: nil)
        let router = DetailsVCRouter()
        let presenter = DetailsVCPresenter(detailsView: view, food: food)
        view.presenter = presenter
        return view
    }
}
