//
//  ContentView.swift
//  Tclone
//
//  Created by Dave Agyakwa on 23/03/2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var slideInMenuVm = SideMenuViewModel()

    var body: some View {
        MainTabView()
            .slidInView(isActive: $slideInMenuVm.isPresented) {
                SideMenuView()
            }
            .navigationTitle("Home")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button {
                        withAnimation(.easeInOut) {
                            slideInMenuVm.isPresented.toggle()
                        }

                    } label: {
                        Circle()
                            .frame(width: 36, height: 36)
                    }
                }
            }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView {
            ContentView()
        }
    }
}
