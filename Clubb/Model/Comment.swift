//
//  Comment.swift
//  Clubb
//
//  Created by Sherbaz Hashmi on 25/11/17.
//  Copyright © 2017 Sherbaz Hashmi. All rights reserved.
//

import Foundation

class Comment : Communication {
    
    var relatedPost : Post
    
    init(sender: User, time: NSDate, content: String, relatedPost : Post) {
        self.relatedPost = relatedPost
        super.init(sender: sender, time: time, content: content)
    }
    
    
}
