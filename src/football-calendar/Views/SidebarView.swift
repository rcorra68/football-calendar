//
//  SidebarView.swift
//  football-calendar
//
//  Created by Roberto Corradetti on 10/03/24.
//

import SwiftUI

struct SidebarView: View {
    @Binding var selection: MenuItem?
    
    var body: some View {
        List(selection: $selection) {
                   Section("Menu") {
                       ForEach(MenuItem.allCases) { selection in
                           Label(selection.displayName,
                                 systemImage: selection.iconName)
                           .tag(selection)
                       }
                   }
        }
    }
}

#Preview {
    SidebarView(selection: .constant(.calendar))
        .listStyle(.sidebar)
}
