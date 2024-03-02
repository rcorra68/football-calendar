//
//  MatchView.swift
//  football-calendar
//
//  Created by Roberto Corradetti on 02/03/24.
//

import SwiftUI

struct MatchView: View {
    var homeTeam: String = "Home Team"
    var hostTeam: String = "Host Team"
    var courtName: String = "Court Name"
    var matchDate: Date = Date()
    var matchTime: String = "15:00"
    var homeMatch: Bool = false
    
    var body: some View {
        HStack {
            HomeView(homeMatch: homeMatch)
            VStack(alignment: .leading, spacing: 4.0) {
                HStack {
                    Text(homeTeam)
                        .font(.body.weight(homeMatch ? .bold : .light))
                    Text("-")
                    Text(hostTeam)
                        .font(.body.weight(homeMatch ? .light : .bold))
                }
                Text(courtName)
                    .font(.caption)
            }
            Spacer()
            Text(matchDate.matchFormat)
                .font(.body)
            Text(matchTime)
                .font(.body)
        }
    }
}

#Preview {
    MatchView()
}
