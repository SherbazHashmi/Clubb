//
//  Post.swift
//  Clubb
//
//  Created by Sherbaz Hashmi on 25/11/17.
//  Copyright © 2017 Sherbaz Hashmi. All rights reserved.
//

import Foundation

class Post : Communication {
    
    var likes : Int
    var postId : Int
    var comments : Array<Comment>

    init (sender : User, time : NSDate, content : String, likes : Int, comments : Array<Comment>) {
        self.likes = likes
        self.comments = comments;
        super.init(sender: sender , time: time, content: content)
    }
    
    func getLikes () -> Int {
        return likes;
    }
    
    func getComments () -> Array<Comment> {
        return comments;
    }
    
}
