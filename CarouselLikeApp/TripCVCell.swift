//
//  TripCVCell.swift
//  CarouselLikeApp
//
//  Created by Kam Lotfull on 25.09.17.
//  Copyright © 2017 Kam Lotfull. All rights reserved.
//

import UIKit

protocol TripCollectionCellDelegate {
    func didLikeButtonPressed(cell: TripCVCell)
}

class TripCVCell: UICollectionViewCell {
    
    var delegate: TripCollectionCellDelegate?
    
    @IBAction func likeButtonPressed(_ sender: Any) {
        delegate?.didLikeButtonPressed(cell: self)
    }
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var cityLabel: UILabel!
    @IBOutlet var countryLabel: UILabel!
    @IBOutlet var totalDaysLabel: UILabel!
    @IBOutlet var priceLabel: UILabel!
    @IBOutlet var likeButton: UIButton!
    var isLiked:Bool = false {
        didSet {
            likeButton.titleLabel?.text = isLiked ? "♥️" : "⭕️"
        }
    }
}
