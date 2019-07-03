//
//  TournamentDetail.swift
//  SwiftUI List
//
//  Created by Daniel Hoang on 6/29/19.
//  Copyright © 2019 Daniel Hoang. All rights reserved.
//

import SwiftUI

let historyList = [
    History(date: "2018/07/15", message: "Champion"),
    History(date: "2018/07/11", message: "Game over"),
    History(date: "2018/07/15", message: "It was a blowout"),
]
struct TournamentDetail : View {
    
    @State var tournamentName : String
    
    var body : some View {
        VStack {
            Text(self.tournamentName)
            VStack {
                ScrollView {
                    ForEach(historyList.identified(by: \.self)) { item in
                        VStack {
                            Text("date: \(item.date)")
                            Text("message: \(item.message)")
                        }
                        .padding(5)
                            .background(Color.gray)
                    }
                }
            }
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
