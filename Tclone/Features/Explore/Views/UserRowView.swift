//
//  UserRowView.swift
//  Tclone
//
//  Created by Dave Agyakwa on 23/03/2022.
//

import SwiftUI

struct UserRowView: View {
    var body: some View {
        HStack{
            Circle().frame(width: 48, height: 48)
                .foregroundColor(.black)
            VStack(alignment:.leading){
                Text("Fletcher")
                    .font(.subheadline)
                    .bold()
                    .foregroundColor(.black)
                
                Text("David Fletcher")
                    .font(.subheadline)
                    .foregroundColor(.gray)
            }
            .padding(.vertical)
            Spacer()
        }.padding(.horizontal)
        
    }
}

struct UserRowView_Previews: PreviewProvider {
    static var previews: some View {
        UserRowView()
    }
}
