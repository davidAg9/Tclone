//
//  ProfileView.swift
//  Tclone
//
//  Created by Dave Agyakwa on 23/03/2022.
//

import SwiftUI

struct ProfileView: View {
    @State private var selectedFilter: TweetFilter = .tweets
    @Namespace var animation
    @Environment(\.presentationMode) var currentView
    
    var body: some View {
        VStack(alignment: .leading) {
            HearderView
            ProfileActionButtons
            UserDetailsView
            TweetFilterBar
            ScrollView{
                LazyVStack{
                    ForEach(0...6,id: \.self){ _ in
                        TweetRowView()
                        
                    }
                }
            }
            Spacer()
        }
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

extension ProfileView {
    var HearderView: some View {
        ZStack(alignment: .bottomLeading) {
            Color(.systemBlue)
                .ignoresSafeArea()
                .frame(height: 80)
            Button {
                currentView.wrappedValue.dismiss()
            } label: {
                Image(systemName: "arrow.left")
                    .resizable()
                    .frame(width: 20, height: 16)
                    .foregroundColor(.white)
                    .offset(x: 10, y: -60)
            }

            Circle()
                .frame(width: 72, height: 72)
                .offset(x: 16, y: 28)
        }
    }
    
    var ProfileActionButtons: some View {
        HStack(spacing: 14) {
            Spacer()
            Image(systemName: "bell.badge")
                .font(.title3)
                .padding(6)
                .overlay(Circle().stroke(Color.gray, lineWidth: 0.75))
            Button {} label: {
                Text("Edit Profile")
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(.black)
                    .frame(width: 120, height: 32)
                    .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color.gray, lineWidth: 0.75))
            }
            
        }.padding(.trailing)
    }
    
    
    var UserDetailsView: some View{
        VStack(alignment: .leading) {
            HStack {
                Text("David Fletcher")
                    .font(.title2)
                    .bold()
                Image(systemName: "checkmark.seal.fill")
                    .font(.title3)
                    .foregroundColor(Color(.systemBlue))
            }
            Text("@fletcher3")
                .font(.subheadline)
                .foregroundColor(.gray)
            Text("Software Engineer in the making,Currently working on Swift and Swiftui 3")
                .font(.subheadline)
                .multilineTextAlignment(.leading)
                .padding(.vertical)
            HStack(spacing: 2) {
                HStack {
                    Image(systemName: "mappin.and.ellipse")
                    Text("Accra, GH")
                }
                HStack {
                    Image(systemName: "link")
                    Text("davidFletcher.dev")
                }
                .frame(width: 100)
                HStack {
                    Image(systemName: "calender")
                    Text("Joined March 2022")
                }
            }
            .font(.caption)
            .foregroundColor(.gray)
            FollowerStatsView()
        }
        .padding(.leading)
    }
    
    var TweetFilterBar :some View{
        HStack{
            ForEach(TweetFilter.allCases,id: \.rawValue) { filter in
                VStack{
                    Text(filter.title)
                        .fontWeight(selectedFilter == filter ? .semibold : .regular)
                        .foregroundColor(selectedFilter == filter ? .black : .gray)
                    if selectedFilter == filter {
                        Capsule()
                            .frame(height:3)
                            .foregroundColor(Color(.systemBlue))
                            .matchedGeometryEffect(id: "filter", in: animation)
                    }else{
                        Capsule()
                            .frame(height:3)
                            .foregroundColor(Color(.clear))

                    }
                }.onTapGesture {
                    withAnimation(.easeInOut) {
                        selectedFilter = filter
                    }
                }
            }
        }
        .overlay(Divider().offset(x:0,y:16))

    }
}
