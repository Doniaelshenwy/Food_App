//
//  FoodInteractor.swift
//  Food_MVP
//
//  Created by Donia Elshenawy on 21/10/2022.
//

import Foundation
import Alamofire

class FoodInteractor{
    func getDataFromAPI(compilation: @escaping (FoodModel?, String?) -> Void){
        let url = "https://www.themealdb.com/api/json/v1/1/categories.php"
        guard let warppedUrl = URL(string: url) else { return }
        AF.request(warppedUrl, method: .get,encoding:URLEncoding.default).responseJSON { dataResponse in
            if let data = dataResponse.data{
                if let decodedData = try? JSONDecoder().decode(FoodModel.self, from: data){
                    compilation(decodedData, nil)
                }
            }
            if let error = dataResponse.error{
                compilation(nil, error.localizedDescription)
            }
        }
    }
    
//    func fetchData(completion: @escaping(Result<FoodModel?, NSError>) -> (Void)) {
//        let url = "https://www.themealdb.com/api/json/v1/1/categories.php"
//        guard let warppedUrl = URL(string: url) else { return }
//        let request = AF.request(warppedUrl, method: .get, encoding: JSONEncoding.default)
//        request.response { dataResponse in
//            switch dataResponse.result {
//
//            case .success(_):
//                <#code#>
//            case .failure(_):
//                <#code#>
//            }
//        }
        
        
//    }
}
