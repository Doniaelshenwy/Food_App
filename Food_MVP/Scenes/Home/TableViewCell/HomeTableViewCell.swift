//
//  HomeTableViewCell.swift
//  Food_MVP
//
//  Created by Donia Elshenawy on 21/10/2022.
//

import UIKit

class HomeTableViewCell: UITableViewCell, FoodCellView {
    
    @IBOutlet weak var viewCell: UIView!
    @IBOutlet weak var imageFood: UIImageView!
    @IBOutlet weak var nameFood: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setName(name: String) {
        nameFood.text = name
    }
    
    func setImage(img: String) {
        imageFood.setImg(for: img)
    }
    
}


