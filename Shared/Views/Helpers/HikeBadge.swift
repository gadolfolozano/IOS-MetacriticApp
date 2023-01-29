//
//  HikeBadge.swift
//  Metacritic App (iOS)
//
//  Created by Gustavo Lozano on 28/01/23.
//

import SwiftUI

struct HikeBadge: View {
    var imageName: String
    var name: String

    var body: some View {
        VStack(alignment: .center) {
            Image(imageName)
                .frame(width: 300, height: 300)
                .scaleEffect(1.0 / 3.0)
                .frame(width: 100, height: 100)
            Text(name)
                .font(.caption)
                .accessibilityLabel("Badge for \(name).")
        }
    }
}

struct HikeBadge_Previews: PreviewProvider {
    static var previews: some View {
        HikeBadge(imageName: "icybay", name: "Preview Testing")
    }
}
