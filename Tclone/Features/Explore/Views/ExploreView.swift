//
//  ExploreView.swift
//  Tclone
//
//  Created by Dave Agyakwa on 23/03/2022.
//

import SwiftUI

struct ExploreView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationView{
            ScrollView{
                LazyVStack{
                    ForEach(0...9,id:\.self){ _ in
                        NavigationLink {
                            ProfileView()
                        } label: {
                            UserRowView()
                        }

                        
                    }
                }
            }
            .searchable(text: $searchText)
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ExploreView_Previews: PreviewProvider {
    static var previews: some View {
        ExploreView()
    }
}
