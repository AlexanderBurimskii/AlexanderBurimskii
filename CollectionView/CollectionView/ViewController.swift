//
//  ViewController.swift
//  CollectionView
//
//  Created by Alexandr Burimskii on 12.04.2021.
//

import UIKit

private let reuseIdentifier = "Cell"

struct StructImage {
  let image: UIImage
}

class ViewController: UIViewController, UICollectionViewController, UICollectionViewDelegate, UICollectionViewDataSource {
    
    var arrayTemperature = [StructImage]()
    
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrayTemperature.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
      if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: reuseIdentifier, for: indexPath) as? Cell
        cell.currentSelectedImage = UIImage(named: arrayTemperature[indexPath.row].currentSelectedImage)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath)
    
    @IBOutlet weak var CollectionViewOne: UICollectionView!
    collectionViewOne.delegate = self
    
//
    @IBOutlet weak var CollectionViewTwo: UICollectionView!
    collectionViewTwo.delegate = self
    collectionViewTwo.dataSource = self
//    
    override func viewDidLoad() {
        super.viewDidLoad()
        arrayTemperature.append(StructImage(image: temp.green))
        arrayTemperature.append(StructImage(image: temp.lightYellow))
        arrayTemperature.append(StructImage(image: temp.red))
//        self.CollectionViewOne!.register(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)
        // Do any additional setup after loading the view.
    }

    guard let vc = storyboard?.instantiateViewController(withIdentifier: "ShowImageVC") as? ShowImageVC else { return }
    var currentSelectedImage: UIImage
    
    present(vc, animated: true, completion: nil)
    
}

