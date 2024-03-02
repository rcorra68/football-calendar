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
}
