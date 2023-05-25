//
//  ContentView.swift
//  Cliffs
//
//  Created by Andrew Maclean on 5/15/23.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            MapboxView().tabItem {
                Label("Map", systemImage: "map")
            }
            AdventuresView().tabItem {
                Label("Adventures", systemImage: "list.dash")
            }
            UsersView().tabItem {
                Label("User", systemImage: "person")
            }
            ConversationsView().tabItem {
                Label("Conversatoins", systemImage: "message")
            }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
