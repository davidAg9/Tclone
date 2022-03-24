//
//  FollowerStatsView.swift
//  Tclone
//
//  Created by Dave Agyakwa on 24/03/2022.
//

import SwiftUI

struct FollowerStatsView: View {
    private var following = 120
    private var followers = 120

    var body: some View {
        HStack(spacing: 24) {
            HStack {
                Text("\(followers)K")
                    .foregroundColor(.black)
                Text("Followers")
            }
            HStack {
                Text("\(following)K")
                    .foregroundColor(.black)
                Text("Following")
            }
        }
        .padding(.vertical)
        .font(.subheadline)
        .foregroundColor(.gray)
    }
}

struct FollowerStatsView_Previews: PreviewProvider {
    static var previews: some View {
        FollowerStatsView()
    }
}
