//
//  HomeVC Presenter.swift
//  Food_MVP
//
//  Created by Donia Elshenawy on 21/10/2022.
//

import Foundation
import UIKit

protocol HomeView: AnyObject{
    var presenter: HomeVCPresenter? {get set}
    func fetchDataSucessful()
    func showError(error: String)
  //  func didSelect(user: Category)
}

protocol FoodCellView{
    func setName(name: String)
    func setImage(img: String)
    func curveView()
}

class HomeVCPresenter{
    var foodArray: [Category] = []
    var searchArray: [Category] = []
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
                searchArray = foodArray
                homeView?.fetchDataSucessful()
            }
            if let error = error{
                homeView?.showError(error: error)
            }
        }
    }
    
    func countFoodArray() -> Int{
        return searchArray.count
    }
    
    func showDataInCell(cell: FoodCellView, for index: Int){
        let food = searchArray[index]
        cell.setName(name: food.strCategory)
        cell.setImage(img: food.strCategoryThumb)
        cell.curveView()
    }
    
    func didSelect(index: Int){
        let food = searchArray[index]
        foodRouter.navigateToDetalisScreen(from: homeView, food: food)
    }
    
    func getGreeting() -> String {
           let hour = Calendar.current.component(.hour, from: Date())
           switch hour {
           case 0..<4:
               return "Hello"
           case 4..<12:
               return "Good morning"
           case 12..<18:
               return "Good afternoon"
           case 18..<24:
               return "Good evening"
           default:
               break
           }
           return "Hello"
       }
    
    func createSearch(searchController: UISearchController){
        guard let searchText = searchController.searchBar.text else { return }
            if searchText == ""{
                searchArray = foodArray
            } else {
                searchArray = []
            for food in foodArray{
                if food.strCategory.lowercased().contains(searchText.lowercased()){
                    searchArray.append(food)
                    print(searchText)
                    print(searchArray)
                }
            }
        }
        homeView?.fetchDataSucessful()
    }
}
