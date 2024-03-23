//
//  MatchView.swift
//  football-calendar
//
//  Created by Roberto Corradetti on 02/03/24.
//

import SwiftUI

struct MatchView: View {
    @Binding var match: Match
    @Binding var selectedMatch: Match?
        
    var body: some View {
        HStack {
            HomeView(homeMatch: match.home)
            VStack(alignment: .leading, spacing: 4.0) {
                HStack {
                    Text(match.homeTeam.teamName)
                        .font(.body.weight(match.home ? .bold : .light))
                    Text("-")
                    Text(match.hostTeam.teamName)
                        .font(.body.weight(match.home ? .light : .bold))
                }
                Text(match.homeTeam.courtName)
                    .font(.caption)
            }
            Spacer()
            Text(match.matchDate.matchFormat)
                .font(.body)
            Text(match.matchTime)
                .font(.body)
            }
    }
}

#Preview {
    MatchView(match: .constant(Match.example()),
              selectedMatch: .constant(nil))
    .padding()
}
