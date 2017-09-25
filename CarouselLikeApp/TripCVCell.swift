//
//  TripCVCell.swift
//  CarouselLikeApp
//
//  Created by Kam Lotfull on 25.09.17.
//  Copyright © 2017 Kam Lotfull. All rights reserved.
//

import UIKit

class TripCVCell: UICollectionViewCell {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var totalDaysLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var likeButton: UIButton!
    var isLiked:Bool = false {
        didSet {
            if isLiked {
                likeButton.titleLabel?.text = "♥️" } else {
                likeButton.titleLabel?.text = "⭕️" }
        }
    }
}
