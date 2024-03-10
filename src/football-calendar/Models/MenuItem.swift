//
//  Menu.swift
//  football-calendar
//
//  Created by Roberto Corradetti on 10/03/24.
//

import Foundation

enum SidebarMenu: Identifiable, CaseIterable, Hashable {
    case calendar,
    case add
    
    var id: String {
        switch self {
        case .calendar:
            "calendar"
        case .add:
            "add"
        }
    }
    
    var displayName: String {
        switch self {
        case .calendar:
            "Calendario"
        case .add:
            "Aggiungi"
        }
    }
    
    var iconName: String {
        switch self {
            case .calendar:
                "calendar"
            case .add:
                "sportcourt"
        }
    }
}
