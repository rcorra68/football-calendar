//
//  Calendar.swift
//  football-calendar
//
//  Created by Roberto Corradetti on 02/03/24.
//

import Foundation

struct Calendar {
    private (set) var matches: [Match]
    
    mutating func add(_ match: Match) {
        matches.append(match)
    }
    
    static func examples() -> [Match] {
        [
            Match(home: true, homeTeam: Team.myTeam(), hostTeam: Team.example1(), matchDate: Date(), matchTime: "15:00"),
            Match(home: false, homeTeam: Team.example2(), hostTeam: Team.myTeam(), matchDate: Date(), matchTime: "15:00"),
            Match(home: true, homeTeam: Team.myTeam(), hostTeam: Team.example3(), matchDate: Date(), matchTime: "15:00"),
        ]
    }
}
