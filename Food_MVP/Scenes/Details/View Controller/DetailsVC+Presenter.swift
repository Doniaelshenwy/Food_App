//
//  DetailsVC+Presenter.swift
//  Food_MVP
//
//  Created by Donia Elshenawy on 27/10/2022.
//

import Foundation

extension DetailsViewController: DetailsView{
    
    func setName(name: String) {
        nameFood.text = name
    }
    
    func setImage(img: String) {
        imageFood.setImg(for: img)
    }
    
    func setDescription(des: String) {
        descriptionFood.text = des
    }
    
    
}
