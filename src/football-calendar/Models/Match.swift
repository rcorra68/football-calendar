//
//  Match.swift
//  football-calendar
//
//  Created by Roberto Corradetti on 29/02/24.
//

import Foundation

struct Match: Identifiable, Hashable {
    let id = UUID()
    var home: Bool
    var homeTeam: Team
    var hostTeam: Team
    var matchDate: Date
    var matchTime: String
    
    init(home: Bool, homeTeam: Team, hostTeam: Team, matchDate: Date, matchTime: String) {
        self.home = home
        self.homeTeam = homeTeam
        self.hostTeam = hostTeam
        self.matchDate = matchDate
        self.matchTime = matchTime
    }
    
    static func example() -> Match {
        Match(home: true, homeTeam: Team.myTeam(), hostTeam: Team.example1(), matchDate: Date(), matchTime: "15:00")
    }
    
    static func examples() -> [Match] {
        [
            Match(home: true, homeTeam: Team.myTeam(), hostTeam: Team.example1(), matchDate: Date(), matchTime: "15:00"),
            Match(home: false, homeTeam: Team.example2(), hostTeam: Team.myTeam(), matchDate: Date(), matchTime: "15:00"),
            Match(home: true, homeTeam: Team.myTeam(), hostTeam: Team.example3(), matchDate: Date(), matchTime: "15:00"),
        ]
    }
}
