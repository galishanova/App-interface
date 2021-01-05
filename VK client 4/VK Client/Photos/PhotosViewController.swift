//
//  PhotosViewController.swift
//  VK Client
//
//  Created by Regina Galishanova on 28.12.2020.
//

import UIKit

class PhotosViewController: UICollectionViewController {
    
    var friends: [Friend]!
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
        return friends.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        if let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "PhotosCell", for: indexPath) as? PhotosCell {
            cell.userPhoto.image = UIImage(named: friends[indexPath.item].image)

        return cell
        }
        return UICollectionViewCell()
    }
    
}
