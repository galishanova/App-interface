//
//  MyFriendsController.swift
//  VK Client
//
//  Created by Regina Galishanova on 26.12.2020.
//

import UIKit

class MyFriendsController: UITableViewController {
    
    var networkService: NetworkService!
    var friends: [Friend]!
    var selectedFriend: Friend!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        networkService = NetworkService()
        friends = networkService.getFriends()
        tableView.reloadData()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowFriendsPhotos" {
            let destination = segue.destination as! PhotosViewController
            destination.friend = selectedFriend
        }
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return friends.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyFriendsCell", for: indexPath) as! MyFriendsCell

        cell.friendName.text = friends[indexPath.row].name
        cell.friendPhotoProfile.image = UIImage(named: friends[indexPath.row].image)
        
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        selectedFriend = friends[indexPath.row]
        performSegue(withIdentifier: "ShowFriendsPhotos", sender: self)
    }

}
