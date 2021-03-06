//
//  ContentView.swift
//  Wynncraft App
//
//  Created by JJ B on 19/7/21.
//

import SwiftUI

let tabBackground = UIColor(red: 186.0/255.0, green: 170.0/255.0, blue: 128.0/255.0, alpha: 1)

extension UIScreen{
   static let screenWidth = UIScreen.main.bounds.size.width
   static let screenHeight = UIScreen.main.bounds.size.height
   static let screenSize = UIScreen.main.bounds.size
}

struct ContentView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State var selection = 0

    var body: some View {
        
        TabView(selection: $selection) {
            PlayerView()
                .tabItem {
                    Text("Player")
                        .font(.custom("TitilliumWeb-Light", size: 16))
                    if selection == 0 {
                                        Image("playerIcon")
                                    } else {
                                        Image("playerIcon50")
                                    }
                }.tag(0)
            GuildView()
                .tabItem {
                    Text("Guild")
                        .font(.custom("TitilliumWeb-Light", size: 16))
                    if selection == 1 {
                                        Image("guildIcon")
                                    } else {
                                        Image("guildIcon50")
                                    }
                }.tag(1)
            GeneralView()
                .tabItem {
                    Text("Map")
                        .font(.custom("TitilliumWeb-Light", size: 16))
                    if selection == 2 {
                                        Image("mapIcon")
                                    } else {
                                        Image("mapIcon50")
                                    }
                }.tag(2)
            LeaderboardsView()
                .tabItem {
                    Text("Leaderboards")
                        .font(.custom("TitilliumWeb-Light", size: 16))
                    if selection == 3 {
                                        Image("leaderboardsIcon")
                                    } else {
                                        Image("leaderboardsIcon50")
                                    }
                }.tag(3)
            BuildsView()
                .tabItem {
                    Text("Tools")
                        .font(.custom("TitilliumWeb-Light", size: 16))
                    if selection == 4 {
                                        Image("toolsIcon")
                                    } else {
                                        Image("toolsIcon50")
                                    }
                }.tag(4)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(/*@START_MENU_TOKEN@*/.dark/*@END_MENU_TOKEN@*/)
    }
}
