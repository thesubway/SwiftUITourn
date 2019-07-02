//
//  TournamentDetail.swift
//  SwiftUI List
//
//  Created by Daniel Hoang on 6/29/19.
//  Copyright © 2019 Daniel Hoang. All rights reserved.
//

import SwiftUI

struct TournamentDetail : View {
    
    @State var tournamentName : String
    
    var body : some View {
        VStack {
            Text(self.tournamentName)
            Button(action: {
                self.buttonClicked()
            }) {
                Text("Change Name")
                }
                .padding(5)
                .border(Color.blue, width: 1)
            
        }
    }
    
    func buttonClicked() {
        tournamentName = "New Name"
    }
}


struct TournamentDetail_Preview: PreviewProvider {
    static var previews: some View {
        TournamentDetail(tournamentName: "name")
    }
}
