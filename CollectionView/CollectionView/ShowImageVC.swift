//
//  ShowImageVC.swift
//  CollectionView
//
//  Created by Alexandr Burimskii on 12.04.2021.
//

import UIKit

class ShowImageVC: UIViewController {

    @IBOutlet weak var currentImage: UIImageView!
    var imageName: String = "imageName"
    func setImageName(imageName: String) {
        currentImage.image = UIImage(named: imageName)
      }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentImage.image = UIImage(named: imageName)
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
