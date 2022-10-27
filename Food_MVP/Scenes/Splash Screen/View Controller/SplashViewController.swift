//
//  SplashViewController.swift
//  Food_MVP
//
//  Created by Donia Elshenawy on 27/10/2022.
//

import UIKit
import AVKit
import AVFoundation

class SplashViewController: UIViewController {
    var presenter: SplashVCPresenter?
    override func viewDidLoad() {
        super.viewDidLoad()
       // presenter = SplashVCPresenter(splashView: self)
        presenter?.setData()
    }    
}
