//
//  NetworkService.swift
//  VK Client
//
//  Created by Regina Galishanova on 30.12.2020.
//

import Foundation

class NetworkService {
    func getFriends() -> [Friend] {
        return [
            Friend(name: "Taylor Swift", id: "1", image:"swift"),
            Friend(name: "Leo Messi", id: "2", image: "messi"),
            Friend(name: "Kylie Jenner", id: "3", image: "jenner"),
            Friend(name: "Dwayne Johnson", id: "4", image: "johnson"),
            Friend(name: "Ariana Grande", id: "5", image: "grande"),
            Friend(name: "Cristiano Ronaldo", id: "6", image: "ronaldo"),
            Friend(name: "Conor McGregor", id: "7", image: "conor")
        ]
    }
    func getCommunities() -> [Community] {
        return [
            Community(name:"Apple", followersCount: "4.5 M", image: "apple"),
            Community(name:"Vkontakte", followersCount: "10.3 M", image: "vk"),
            Community(name:"iOS-developers", followersCount: "1 M", image: "ios dev"),
            Community(name:"World News", followersCount: "567.4 K", image: "news"),
            Community(name:"English language", followersCount: "1.1 M", image: "eng"),
            Community(name:"Fashion", followersCount: "973 K", image: "fashion"),
            Community(name: "Forbes", followersCount: "3 M", image: "forbes"),
            Community(name: "VK Music", followersCount: "3.3 M", image: "music vk"),
            Community(name: "Travel in Russia", followersCount: "297.4 K", image: "rus trav"),
            Community(name: "Sport", followersCount: "1.6 M", image: "sport")
        ]
    }
}
