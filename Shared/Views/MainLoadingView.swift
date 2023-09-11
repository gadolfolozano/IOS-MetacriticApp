//
//  MainLoadingView.swift
//  Metacritic App (iOS)
//
//  Created by Gustavo Lozano on 03/09/23.
//

import SwiftUI

struct MainLoadingView: View {
    var body: some View {
        VStack {
            Text("Main Loading ...")
        }.onAppear {
            print("MainLoadingView appeared!")
        }
        .onDisappear {
            print("MainLoadingView disappeared!")
        }
    }
}

struct MainLoadingView_Previews: PreviewProvider {
    static var previews: some View {
        MainLoadingView()
    }
}
