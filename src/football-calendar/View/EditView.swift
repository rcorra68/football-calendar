//
//  EditView.swift
//  football-calendar
//
//  Created by Roberto Corradetti on 25/02/24.
//

import SwiftUI

struct EditView: View {
    @State public var homeTeam: String = "";
    @State private var hostTeam: String = "";
    
    var body: some View {
        VStack {
            HStack(alignment: .center, content: {
                Text("Squadra locale")
                TextField("Squadra locale", text: $homeTeam)
                    .padding()
            }).frame(alignment: .leading)
            HStack(alignment: .center, content: {
                Text("Squadra ospite")
                TextField("Squadra ospite", text: $hostTeam)
                .padding()
            }).frame(alignment: .leading)
        }
        .padding(.all)
    }
}

#Preview {
    EditView()
}
