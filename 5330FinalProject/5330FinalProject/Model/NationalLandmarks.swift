//
//  NationalLandmarks.swift
//  5330FinalProject
//
//  Created by J B on 6/26/26.
//

import Foundation

struct LandmarkLocation {
    var name: String
    var location: String
    var imageName: String
    
    init(_ name: String, _ location: String, _ imageName: String) {
        self.name = name
        self.location = location
        self.imageName = imageName
    }
}
