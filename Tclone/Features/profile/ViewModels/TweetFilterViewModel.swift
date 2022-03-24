//
//  TweetFilterViewModel.swift
//  Tclone
//
//  Created by Dave Agyakwa on 23/03/2022.
//

import Foundation
enum TweetFilter  :Int, CaseIterable{
    case tweets
    case replies
    case  likes
    
    
    var title :String{
        switch self {
            case .tweets:
                return "Tweets"
            case .replies:
                return "Replies"
            case .likes:
                return "Likes"
        }
    }
}
