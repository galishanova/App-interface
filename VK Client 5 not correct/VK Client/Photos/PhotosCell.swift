//
//  PhotosCell.swift
//  VK Client
//
//  Created by Regina Galishanova on 28.12.2020.
//

import UIKit

class PhotosCell: UICollectionViewCell {
    
    @IBOutlet weak var userPhoto: UIImageView!
    @IBOutlet weak var btnLike: UIButton!
    @IBOutlet weak var likeLabel: UILabel!
    
    var likes = [Int]()

    @IBAction func btnLikeClick(_ sender: UIButton) {
        if btnLike.tag == 0 {
            btnLike.setImage(UIImage(systemName: "heart.fill"), for: .normal)
            btnLike.tag = 1
            
            likes.append(tag)
            self.likeLabel.text = "\(likes.count)"
        }
        else {
            btnLike.setImage(UIImage(systemName: "heart"), for: .normal)
            btnLike.tag = 0
            
            likes.removeLast()
            self.likeLabel.text = "\(likes.count)"
            
        }
    }
}

