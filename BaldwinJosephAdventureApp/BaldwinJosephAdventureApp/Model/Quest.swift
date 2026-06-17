//
//  Untitled.swift
//  BaldwinJosephAdventureApp
//
//  Created by J B on 6/8/26.
//

import Foundation

struct Quest {
    let quest: String
    let optionOne: String?
    let optionTwo: String?
    let imageName: String
    
    init(_ quest: String, _ optionOne: String? = nil, _ optionTwo: String? = nil, _ imageName: String) {
        self.quest = quest
        self.optionOne = optionOne
        self.optionTwo = optionTwo
        self.imageName = imageName
    }
}
