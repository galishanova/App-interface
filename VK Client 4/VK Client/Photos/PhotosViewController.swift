//
//  PhotosViewController.swift
//  VK Client
//
//  Created by Regina Galishanova on 28.12.2020.
//

import UIKit

class PhotosViewController: UICollectionViewController {
    
    var friends: [Friend]!
    var friend: Friend!
    var friendPhotos = [String]()
    var networkService: NetworkService!

    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
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

        return cell
        }
        return UICollectionViewCell()
    }
    
}
