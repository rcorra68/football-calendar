//
//  TextData.swift
//  football-calendar
//
//  Created by Roberto Corradetti on 02/03/24.
//

import Foundation

struct TestData {
    // Teams
    static let team1: Team = Team(id: "52af1025-e498-4d4e-8203-a6f7383d5d4e", teamName: "MONTECOSARO", courtName: "ANTONIO MARIOTTI MONTECOSARO")
    static let team2: Team = Team(id: "bdb5806c-9d41-4c89-a342-d3d7cafe4c04", teamName: "CAMERANO CALCIO", courtName: "COMUNALE D. MONTENOVO CAMERANO")
    static let team3: Team = Team(id: "bffb043a-83b2-49fd-b992-dc67165da0db", teamName: "CANDIA BARACCOLA ASPIO", courtName: "COMUNALE DON ORIONE ANCONA")
    static let team4: Team = Team(id: "d41772be-81d9-4482-a33f-2083a52b0bb9", teamName: "CINGOLANA SAN FRANCESCO", courtName: "ALDO SPIVACH CINGOLI")

    // Matches
    static let Matches: [Match] = [
        Match(home: true, homeTeam: team1, hostTeam: team2, matchDate: Date(), matchTime: "15:00"),
        Match(home: false, homeTeam: team3, hostTeam: team1, matchDate: Date(), matchTime: "15:00"),
        Match(home: true, homeTeam: team1, hostTeam: team4, matchDate: Date(), matchTime: "15:00"),

    ]
    
    // Calendar
    static let calendar = Calendar(matches: Matches)
}
