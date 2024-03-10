//
//  Match.swift
//  football-calendar
//
//  Created by Roberto Corradetti on 29/02/24.
//

import Foundation

struct Match: Identifiable {
    let id = UUID()
    let home: Bool
    let homeTeam: Team
    let hostTeam: Team
    let matchDate: Date
    let matchTime: String
}
