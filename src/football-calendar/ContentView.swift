//
//  ContentView.swift
//  football-calendar
//
//  Created by Roberto Corradetti on 29/02/24.
//

import SwiftUI

struct ContentView: View {
    @State private var selection: MenuItem? = MenuItem.calendar
    
    @State private var allMatch = Match.examples()

    var body: some View {
        NavigationSplitView{
            SidebarView(selection: $selection)
        } detail : {
            switch selection {
            case .calendar:
                CalendarView(matches: $allMatch)
            case .add:
                EditView()
            case nil:
                Text("Empty")
            }
        }
    }
}

#Preview {
    ContentView()
}
