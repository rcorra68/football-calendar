//
//  CalendarView.swift
//  football-calendar
//
//  Created by Roberto Corradetti on 02/03/24.
//

import SwiftUI

struct CalendarView: View {    
    var calendar: Calendar = TestData.calendar
    
    var body: some View {
        List {
            ForEach(calendar.matches) { match in
                MatchView(
                    homeTeam: match.homeTeam.teamName,
                    hostTeam: match.hostTeam.teamName,
                    courtName: match.homeTeam.courtName,
                    matchDate: match.matchDate,
                    matchTime: match.matchTime,
                    homeMatch: match.home)
            }
        }
    }
}

#Preview {
    CalendarView()
}
