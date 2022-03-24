//
//  SideMenuView.swift
//  Tclone
//
//  Created by Dave Agyakwa on 24/03/2022.
//

import SwiftUI

struct SideMenuView: View {
    var body: some View {
        VStack (alignment:.leading,spacing: 32 ){
            VStack(alignment:.leading) {
               Circle()
                    .frame(width: 48, height: 48)
                Text("David Fletcher")
                    .font(.headline)
                
                Text("@fletcher3")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                
                FollowerStatsView()
                
                
            }
            ForEach(SideMenuOptions.allCases, id:\.rawValue){ options in
                HStack(spacing: 16){
                    Image(systemName: options.imageName)
                        .font(.headline)
                        .foregroundColor(.gray)
                    Text(options.title)
                        .font(.subheadline)
                    Spacer()
                }
                .frame(height:40)
                
            } 
            Spacer()
            
        }
        .padding(.horizontal)
    }
}

struct SideMenuView_Previews: PreviewProvider {
    static var previews: some View {
        SideMenuView()
    }
}
