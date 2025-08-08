//
//  ContentView.swift
//  Birthdays
//
//  Created by Scholar on 8/8/25.
//

import SwiftUI

struct ContentView: View {
    
    @State private var friends: [Friend] = [
        Friend (name: "Chloe", birthday: .now),
        Friend (name: "Nusayba", birthday: Date(timeIntervalSince1970: 0))
    ]
    
    var body: some View {
        List(friends, id: \.name) { friend in HStack{
            Text(friend.name)
            Spacer()
            Text(friend.birthday, format: .dateTime.month(.wide).day().year())
        }
        }
    }
}

#Preview {
    ContentView()
}
