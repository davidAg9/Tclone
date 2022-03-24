//
//  SideMenuViewModel.swift
//  Tclone
//
//  Created by Dave Agyakwa on 24/03/2022.
//

import Foundation
final class SideMenuViewModel: ObservableObject {
    @Published var isPresented: Bool = false
}

enum SideMenuOptions: Int, CaseIterable {
    case profile
    case lists
    case topics
    case bookmarks
    case logout

    var title: String {
        switch self {
            case .profile:
                return "Profile"
            case .lists:
                return "Lists"
            case .topics:
                return "Topics"
            case .bookmarks:
                return "Bookmarks"
            case .logout:
                return "Logout"
        }
    }

    var imageName: String {
        switch self {
            case .profile:
                return "person"
            case .lists:
                return "list.bullet"
            case .topics:
                return "text.bubble"
            case .bookmarks:
                return "bookmark"
            case .logout:
                return "arrow.left.square"
        }
    }
}
