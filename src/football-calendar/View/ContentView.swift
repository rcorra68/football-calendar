//
//  ContentView.swift
//  football-calendar
//
//  Created by Roberto Corradetti on 21/02/24.
//

import SwiftUI

struct ContentView: View {
    let data = (1...10).map { "Item \($0)" }

    let columns = [
        GridItem(.fixed(100)),
        GridItem(.flexible()),
    ]

    var body: some View {
        ScrollView {
            LazyVGrid(columns: columns, spacing: 20) {
                ForEach(data, id: \.self) { item in
                    Text(item)
                }
            }
            .padding(.horizontal)
        }
        .frame(maxHeight: 300)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
