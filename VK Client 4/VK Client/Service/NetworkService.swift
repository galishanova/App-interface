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
            Friend(name: "Taylor Swift", image: "swift", allImages: ["swift2"]),
            Friend(name: "Leo Messi", image: "messi", allImages: ["messi2", "messi3"]),
            Friend(name: "Kylie Jenner", image: "jenner", allImages: ["jenner2", "jenner3", "jenner4"]),
            Friend(name: "Dwayne Johnson", image: "johnson", allImages: ["johnson2"]),
            Friend(name: "Ariana Grande", image: "grande", allImages: ["grande2"]),
            Friend(name: "Cristiano Ronaldo", image: "ronaldo", allImages: ["ronaldo2"]),
            Friend(name: "Conor McGregor", image: "conor", allImages: ["conor2", "conor3", "conor4"])
        ]
    }
    func getCommunities() -> [Community] {
        return [
            Community(name:"Apple", image: "apple"),
            Community(name:"Vkontakte", image: "vk"),
            Community(name:"iOS-developers", image: "ios dev"),
            Community(name:"World News", image: "news"),
            Community(name:"English language", image: "eng"),
            Community(name:"Fashion", image: "fashion"),
            Community(name: "Forbes", image: "forbes"),
            Community(name: "VK Music", image: "music vk"),
            Community(name: "Travel in Russia", image: "rus trav"),
            Community(name: "Sport", image: "sport")
        ]
    }
}
