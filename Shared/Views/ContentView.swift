//
//  ContentView.swift
//  Shared
//
//  Created by Gustavo Lozano on 12/01/23.
//

import SwiftUI

struct ContentView: View {
    @StateObject var getTokenManager = GetTokenManager()
    
    @State private var isShowingDetailView = false
    
    var body: some View {
        NavigationView {
            ZStack {
                
                
                /*NavigationLink(
                    destination: Text("Second View"),
                    isActive: $getTokenManager.gotToken,
                    label: {
                        EmptyView()
                    }
                )*/
                if(getTokenManager.gotToken) {
                    MainView()
                } else {
                    MainLoadingView()
                }
            }//.navigationTitle("Navigation")
        }
        .onAppear {
            print("ContentView appeared!")
            getTokenManager.getData()
        }
        .onDisappear {
            print("ContentView disappeared!")
        }
        .environmentObject(getTokenManager)
    }
    
    /*@State private var selection: Tab = .featured
    
    enum Tab {
        case featured
        case list
    }
    
    
    var body: some View {
        TabView(selection: $selection) {
            CategoryHome()
                .tabItem {
                    Label("Featured", systemImage: "star")
                }
                .tag(Tab.featured)
            
            LandmarkList()
                .tabItem {
                    Label("List", systemImage: "list.bullet")
                }
                .tag(Tab.list)
        }
    }*/
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .environmentObject(ModelData())
        //Need to set an enviroment object because of the preview
    }
}
