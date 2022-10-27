//
//  DetailsVCPresenter.swift
//  Food_MVP
//
//  Created by Donia Elshenawy on 27/10/2022.
//

import Foundation

protocol DetailsView: AnyObject{
    var presenter: DetailsVCPresenter? {get set}
    func setName(name: String)
    func setImage(img: String)
    func setDescription(des: String)
}

class DetailsVCPresenter{
    private weak var detailsView: DetailsView?
    private let food: Category
    
    init(detailsView: DetailsView, food: Category){
        self.detailsView = detailsView
        self.food = food
    }
    
    func viewDidLoad(){
        setData()
    }
    
    func setData(){
        detailsView?.setName(name: food.strCategory)
        detailsView?.setImage(img: food.strCategoryThumb)
        detailsView?.setDescription(des: food.strCategoryDescription)
    }
    
}
