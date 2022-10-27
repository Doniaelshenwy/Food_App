//
//  SplashVCPresenter.swift
//  Food_MVP
//
//  Created by Donia Elshenawy on 27/10/2022.
//

import Foundation

protocol SplashView: AnyObject{
    func setVideo(nameVideo: String)
}

class SplashVCPresenter{
    private weak var spalshView: SplashView?
    private let router: SplashRouter
    init(splashView: SplashView, router: SplashRouter){
        self.spalshView = splashView
        self.router = router
    }
    func viewDidLoad(){
        setData()
    }
    
    func setData(){
        spalshView?.setVideo(nameVideo: "food")
    }
    
    func endTime(){
        DispatchQueue.main.asyncAfter(deadline: .now() + 10) {
            self.router.navigationToHomeScreen(from: self.spalshView)
        }
    }
}
