//
//  FeedView.swift
//  Tclone
//
//  Created by Dave Agyakwa on 23/03/2022.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView{
            LazyVStack{
                ForEach(0...12,id: \.self){ _ in
                    TweetRowView()
                    
                }
            }
        }
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
