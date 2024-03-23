//
//  CalendarView.swift
//  football-calendar
//
//  Created by Roberto Corradetti on 10/03/24.
//

import SwiftUI

struct CalendarView: View {
    @Binding var matches: [Match]
    @State private var selectedMatch: Match? = nil
    
    var body: some View {
        List($matches) {$match in
            MatchView(match: $match,
                      selectedMatch: $selectedMatch)
        }
    }
}

#Preview {
    CalendarView(matches: .constant(Match.examples()))
}
