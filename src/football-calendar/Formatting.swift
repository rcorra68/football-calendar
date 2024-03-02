//
//  TypeExt.swift
//  football-calendar
//
//  Created by Roberto Corradetti on 02/03/24.
//

import Foundation

extension Date {
    var matchFormat: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.locale = Locale(identifier: "it_IT")
        return formatter.string(from: self)
    }
}
