//
//  PhotosCell.swift
//  VK Client
//
//  Created by Regina Galishanova on 28.12.2020.
//

import UIKit

class PhotosCell: UICollectionViewCell {
    
    var likes = [Int]()
    let view = UIView()
    var photoController: PhotosViewController?

    @IBOutlet weak open var userPhoto: UIImageView!
    @IBOutlet weak var likeView: UIView!
    @IBOutlet weak var btnLike: UIButton!
    @IBOutlet weak var likeLabel: UILabel!
    
    
    func setupViews() {
        backgroundColor = UIColor.white
        
        addSubview(userPhoto)
        userPhoto.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(animate)))
        userPhoto.isUserInteractionEnabled = true
        userPhoto.contentMode = .scaleAspectFill
        userPhoto.clipsToBounds = true


    }
    
    
//    @objc func zoom() {
//        userPhoto.backgroundColor = UIColor.red
//        userPhoto.frame = startingFrame
//
//        addSubview(userPhoto)
//
//        UIView.animate(withDuration: 0.75) { () -> Void in
//            let height = (self.view.frame.width / self.startingFrame.width) * self.startingFrame.height
//
//            let y = self.view.frame.height / 2 - height / 2
//
//            self.userPhoto.frame = CGRect(x: 0, y: y, width: self.view.frame.width, height: height)
//        }
//    }
    
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
        //like lbl & btn animation
        UIView.animate(withDuration: 0.2, animations: { () -> Void in
            self.likeView.transform = .init(scaleX: 1.25, y: 1.25)
        }) { (finished: Bool) -> Void in
            UIView.animate(withDuration: 0.25, animations: { () -> Void in
                self.likeView.transform = .identity
            })
        }
    }
    
    @objc func animate() {
        photoController?.animateImageView(userPhoto: userPhoto)
    }
}

