//
//  HomeSwiftUIView.swift
//  football-calendar
//
//  Created by Roberto Corradetti on 02/03/24.
//

import SwiftUI

struct HomeView: View {
    var homeMatch: Bool = true
    
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 10)
                .fill(homeMatch ? .cyan : Color(.lightGray))
                .opacity(0.4)
                .frame(width: 50.0, height: 50.0)
            Image(systemName: "house")
                .imageScale(.large)
                .foregroundColor(.black)
                .foregroundStyle(.tint)
        }
    }
}

#Preview {
    HomeView()
}
