//
//  HomeVC Presenter.swift
//  Food_MVP
//
//  Created by Donia Elshenawy on 21/10/2022.
//

import Foundation

protocol HomeView: AnyObject{
    func fetchDataSucessful()
    func showError(error: String)
}

protocol FoodCellView{
    func setName(name: String)
    func setImage(img: String)
}

class HomeVCPresenter{
    var foodArray: [Category] = []
    private weak var homeView: HomeView?
    private var foodIntractor = FoodInteractor()
    
    init(homeView: HomeView){
        self.homeView = homeView
    }
    
    func viewDidLoad() {
        getData()
    }
    
    func getData(){
        foodIntractor.getDataFromAPI { [self] dataArray, error in
            if let dataArray = dataArray{
                foodArray = dataArray.categories
                print(foodArray)
                homeView?.fetchDataSucessful()
            }
            if let error = error{
                homeView?.showError(error: error)
            }
        }
    }
    
    func countFoodArray() -> Int{
        return foodArray.count
    }
    
    func showDataInCell(cell: FoodCellView, for index: Int){
        let food = foodArray[index]
        cell.setName(name: food.strCategory)
        cell.setImage(img: food.strCategoryThumb)
    }
}
