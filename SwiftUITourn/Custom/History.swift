//
//  History.swift
//  SwiftUITourn
//
//  Created by Daniel Hoang on 7/2/19.
//  Copyright © 2019 Daniel Hoang. All rights reserved.
//

import Foundation

import SwiftUI

import CoreLocation

struct History : Hashable {
    let date : String
    let message : String
    
    init(date: String, message: String) {
        self.date = date
        self.message = message
    }
    
}
