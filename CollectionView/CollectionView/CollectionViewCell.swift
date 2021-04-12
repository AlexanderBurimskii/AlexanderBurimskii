//
//  CollectionViewCell.swift
//  CollectionView
//
//  Created by Alexandr Burimskii on 12.04.2021.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var temperatureImage: UIImageView!
    func temperatureImage(temperatureName: String) {
        temperatureImage.image = UIImage(named: temperatureName)
      }
    
    @IBOutlet weak var smileImage: UIImageView!
    func setSmileImage(smileName: String) {
        smileImage.image = UIImage(named: smileName)
      }
    
    
}
