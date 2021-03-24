//
//  PersonFollowingTableViewCellViewModel.swift
//  MVVMProject
//
//  Created by Anas AbuZaitoun on 24/03/2021.
//

import Foundation
import UIKit

struct PersonFollowingTableViewCellViewModel {
    let name: String
    let username: String
    var currentlyFollowing: Bool
    let image: UIImage?
    
    init(with model: Person) {
        self.name = model.name
        self.username = model.username
        self.currentlyFollowing = false
        self.image = UIImage(systemName: "person")
    }
}
