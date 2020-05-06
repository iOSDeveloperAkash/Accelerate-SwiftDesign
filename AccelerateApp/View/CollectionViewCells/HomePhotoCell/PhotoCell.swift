//
//  PhotoCell.swift
//  AccelerateApp
//
//  Created by Akash on 05/05/20.
//  Copyright © 2020 Akash. All rights reserved.
//

import UIKit

class PhotoCell: UICollectionViewCell {

    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var imageBaseView: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        imageBaseView.layer.cornerRadius = imageBaseView.frame.height / 2
        imageBaseView.clipsToBounds = true
        userImageView.layer.cornerRadius = userImageView.frame.height / 2
        userImageView.clipsToBounds = true
    }
    
}
