//
//  Team.swift
//  football-calendar
//
//  Created by Roberto Corradetti on 25/02/24.
//

import Foundation

struct Team: Identifiable, Hashable {
    let id = UUID()
    var teamName: String
    var courtId: Int32 = 0
    var courtName: String
    var courtAddress: String = ""
    var eMail: String = ""
    var manager: String = ""
    var matchDay: String = ""
    var matchTime: String = ""
    var mobilePhone: String = ""
    var pec: String = ""
    var phone: String = ""
    var sitePhone: String = ""
    
    init(teamName: String, courtName: String) {
        self.teamName = teamName
        self.courtName = courtName
    }
    
    static func myTeam() -> Team {
        Team(teamName: "MONTECOSARO", courtName: "ANTONIO MARIOTTI MONTECOSARO")
    }

    static func example1() -> Team {
        Team(teamName: "CAMERANO CALCIO", courtName: "COMUNALE D. MONTENOVO CAMERANO")
    }

    static func example2() -> Team {
        Team(teamName: "CANDIA BARACCOLA ASPIO", courtName: "COMUNALE DON ORIONE ANCONA")
    }

    static func example3() -> Team {
        Team(teamName: "CINGOLANA SAN FRANCESCO", courtName: "ALDO SPIVACH CINGOLI")
    }

    static func examples() -> [Team] {
        [
            myTeam(),
            Team(teamName: "CAMERANO CALCIO", courtName: "COMUNALE D. MONTENOVO CAMERANO"),
            Team(teamName: "CANDIA BARACCOLA ASPIO", courtName: "COMUNALE DON ORIONE ANCONA"),
            Team(teamName: "CINGOLANA SAN FRANCESCO", courtName: "ALDO SPIVACH CINGOLI")
        ]
    }
}
