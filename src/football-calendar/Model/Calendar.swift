//
//  Calendar.swift
//  football-calendar
//
//  Created by Roberto Corradetti on 02/03/24.
//

import Foundation

struct Calendar {
    private (set) var matchs: [Match]
    
    mutating func add(_ match: Match) {
            matchs.append(match)
        }
}
