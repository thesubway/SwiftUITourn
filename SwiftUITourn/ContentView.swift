//
//  ContentView.swift
//  SwiftUI List
//
//  Created by Daniel Hoang on 6/25/19.
//  Copyright © 2019 Daniel Hoang. All rights reserved.
//

import SwiftUI

let items = [
    Tourn(name: "Bowling", imgUrl: "bowlPin"),
    Tourn(name: "Chess", imgUrl: "wk"),
    Tourn(name: "Ping Pong", imgUrl: "pingpong")
]

struct ContentView : View {
    var body: some View {
        NavigationView {
            List(items.identified(by: \.self)) { item in
                NavigationLink(destination: TournamentDetail(tournamentName: item.name)) {
                    HStack {
                        Image(item.imgUrl).resizable().frame(width: 50, height: 50, alignment: Alignment.center)
                        VStack {
                            Text(item.name)
                        }
                    }
                }
            }
            .navigationBarTitle(Text("Tournaments"))
        }
    }
}

//.navigationBarTitle("My title")

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
