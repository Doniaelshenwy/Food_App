//
//  SplashVC+delegatePresenter.swift
//  Food_MVP
//
//  Created by Donia Elshenawy on 27/10/2022.
//

import Foundation
import AVFoundation

extension SplashViewController: SplashView{
    func setVideo(nameVideo: String) {
        let player = AVPlayer(url: URL(fileURLWithPath: Bundle.main.path(forResource: nameVideo, ofType: "mp4")!))
        let layer = AVPlayerLayer(player: player)
        layer.frame = view.bounds
        layer.videoGravity = .resize
        view.layer.addSublayer(layer)
        player.volume = 0
        player.play()
        presenter?.endTime()
    }
}
