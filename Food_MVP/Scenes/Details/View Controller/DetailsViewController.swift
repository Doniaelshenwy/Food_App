//
//  DetailsViewController.swift
//  Food_MVP
//
//  Created by Donia Elshenawy on 21/10/2022.
//

import UIKit

class DetailsViewController: UIViewController {

    @IBOutlet weak var imageFood: UIImageView!
    @IBOutlet weak var nameFood: UILabel!
  
    @IBOutlet weak var descriptionFood: UILabel!
    
    var presenter: DetailsVCPresenter? 
//    var img = ""
//    var name = ""
//    var decriptionTV = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Details"
        presenter?.viewDidLoad()
//        setData()
    }

//    func setData(){
//        imageFood.setImg(for: img)
//        nameFood.text = name
//        descriptionFood.text = decriptionTV
//    }
}
