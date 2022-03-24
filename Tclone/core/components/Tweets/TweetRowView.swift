//
//  TweetRowView.swift
//  Tclone
//
//  Created by Dave Agyakwa on 23/03/2022.
//

import SwiftUI

struct TweetRowView: View {
    var body: some View {
        VStack(alignment:.leading){
            HStack(alignment: .top, spacing: 12) {
                //tweet user profile photo
                Circle()
                    .frame(width: 56, height: 56)
                    .foregroundColor(Color(.systemBlue))
                //tweet info
                VStack(alignment:.leading,spacing: 2){
                    //userinfo
                    HStack{
                        Text("David Fletcher")
                            .font(.subheadline)
                            .bold()
                        Text("@bruceWayne")
                            .font(.caption)
                        Circle()
                            .frame(width: 4, height: 4)
                            .foregroundColor(Color(.systemGray))
                        Text("45m")
                            .foregroundColor(.gray)
                            .font(.caption)
                        
                    }
                    //tweet text
                    Text("Russia should stop fighting with Ukraine")
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                    
                }
            }.padding(.leading,6)
            
            //tweet action buttons
            HStack(alignment: .center){
                Button {
                    
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }

                
            }.padding()
                .foregroundColor(.gray)
            Divider()
        }
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView()
    }
}
