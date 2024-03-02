//
//  ContentView.swift
//  football-calendar
//
//  Created by Roberto Corradetti on 29/02/24.
//

import SwiftUI

struct ContentView: View {
    @State var matches = [Match( homeTeam: "Montecosaro",
                           hostTeam: "Cingoli",
                           matchDate: Date(),
                           matchTime: "15:00")]
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
            Table(matches) {
                TableColumn("Casa", value: \.homeTeam)
                TableColumn("Ospiti", value: \.hostTeam)
                TableColumn("Data") { match in (Text(match.matchDate, style: .date).frame(maxWidth: .infinity, alignment: .center))}
                TableColumn("Ora") { match in (Text(match.matchTime).frame(maxWidth: .greatestFiniteMagnitude, alignment: .center))}
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
