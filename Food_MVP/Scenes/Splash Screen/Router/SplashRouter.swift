//
//  SplashRouter.swift
//  Food_MVP
//
//  Created by Donia Elshenawy on 27/10/2022.
//

import Foundation
import UIKit

class SplashRouter{
    class func createSplashVC() -> UIViewController{
        let splashView = SplashViewController(nibName: "SplashViewController", bundle: nil)
        let router = SplashRouter()
        let presnter = SplashVCPresenter(splashView: splashView, router: router)
        splashView.presenter = presnter
        return splashView
    }
    
    func navigationToHomeScreen(from view: SplashView?){
        let homeVC = HomeVCRouter.createHomeVC()
        if let vc = view as? UIViewController{
            vc.navigationController?.pushViewController(homeVC, animated: true)
        }
    }
}
