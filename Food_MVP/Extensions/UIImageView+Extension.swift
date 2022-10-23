//
//  UIImageView+Extension.swift
//  Food_MVP
//
//  Created by Donia Elshenawy on 22/10/2022.
//

import Kingfisher
import UIKit

extension UIImageView {
    
    func setImg(for imageLink: String?) {
        guard let imageLink = imageLink,
              let url = URL(string: imageLink) else { return }
        kf.setImage(with: url)
    }
}

