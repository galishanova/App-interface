//
//  PhotosViewController.swift
//  VK Client
//
//  Created by Regina Galishanova on 28.12.2020.
//

import UIKit

class PhotosViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    var friends: [Friend]!
    var friend: Friend!
    var friendPhotos = [String]()
    var networkService: NetworkService!


    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        
        self.title = "\(friend.name)'s photos"
    }
    
    override func viewWillAppear(_ animated: Bool) {
        networkService = NetworkService()
        friends = networkService.getFriends()
        collectionView.reloadData()
    }
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        friendPhotos.append(friend.image)
        friendPhotos.append(contentsOf: friend.allImages)
        return friendPhotos.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotosCell", for: indexPath) as? PhotosCell {
            cell.userPhoto.image = UIImage(named: friendPhotos[indexPath.row])
        
        
//            let tap = UITapGestureRecognizer(target: self, action: #selector(zoom))
//            cell.userPhoto.isUserInteractionEnabled = true
//            cell.userPhoto.layer.masksToBounds = true
//            cell.contentMode = .scaleAspectFill
//            cell.userPhoto.addGestureRecognizer(tap)
            cell.photoController = self

        return cell
        }
        return UICollectionViewCell()
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        
        collectionView?.collectionViewLayout.invalidateLayout()
    }
    
    
    func animateImageView(userPhoto: UIImageView) {
        
        if let startingFrame = userPhoto.superview?.convert(userPhoto.frame, to: nil) {
            let zoomImageView = UIView()
            zoomImageView.backgroundColor = UIColor.red
            zoomImageView.frame = startingFrame
            view.addSubview(zoomImageView)
            
            UIView.animate(withDuration: 0.75) { () -> Void in
                let height = (self.view.frame.width / startingFrame.width) * startingFrame.height
    
                let y = self.view.frame.height / 2 - height / 2
    
                zoomImageView.frame = CGRect(x: 0, y: y, width: self.view.frame.width, height: height)
            }
        }
        
    }
    
}
