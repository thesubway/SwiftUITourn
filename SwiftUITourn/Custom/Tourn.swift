//
//  TournName.swift
//  SwiftUI List
//
//  Created by Daniel Hoang on 6/29/19.
//  Copyright © 2019 Daniel Hoang. All rights reserved.
//

import SwiftUI

import CoreLocation

struct Tourn : Hashable {
    let name : String
    let imgUrl : String
    
    init(name: String, imgUrl: String) {
        self.name = name
        self.imgUrl = imgUrl
    }
    
}
