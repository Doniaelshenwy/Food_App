//
//  HomeVC Presenter.swift
//  Food_MVP
//
//  Created by Donia Elshenawy on 21/10/2022.
//

import Foundation

protocol HomeView: AnyObject{
    var presenter: HomeVCPresenter? {get set}
    func fetchDataSucessful()
    func showError(error: String)
  //  func didSelect(user: Category)
}

protocol FoodCellView{
    func setName(name: String)
    func setImage(img: String)
}

class HomeVCPresenter{
    var foodArray: [Category] = []
    private weak var homeView: HomeView?
    private var foodIntractor: FoodInteractor
    private var foodRouter: HomeVCRouter
    // , foodIntractor: FoodInteractor, foodRouter: HomeVCRouter
    init(homeView: HomeView, foodIntractor: FoodInteractor, foodRouter: HomeVCRouter){
        self.homeView = homeView
        self.foodIntractor = foodIntractor
        self.foodRouter = foodRouter
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
        print(foodArray.count)
        return foodArray.count
    }
    
    func showDataInCell(cell: FoodCellView, for index: Int){
        let food = foodArray[index]
        cell.setName(name: food.strCategory)
        cell.setImage(img: food.strCategoryThumb)
    }
    
    func didSelect(index: Int){
        let food = foodArray[index]
        foodRouter.navigateToDetalisScreen(from: homeView, food: food)
    }
}
