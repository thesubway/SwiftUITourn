//
//  DHText.swift
//  SwiftUI List
//
//  Created by Daniel Hoang on 6/29/19.
//  Copyright © 2019 Daniel Hoang. All rights reserved.
//

import SwiftUI

struct TournView : View {
    
    var tourn : Tourn
    
    var body: some View {
        HStack {
            Text(self.tourn.name)
        }
    }
}
