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
    var postID : Int
    var comments : Array<Comment>

    init (sender : User, time : NSDate, content : String, likes : Int, comments : Array<Comment>, postID : Int) {
        self.likes = likes
        self.comments = comments;
        self.postID = postID;
        super.init(sender: sender , time: time, content: content)
    }
    
    func getLikes () -> Int {
        return likes;
    }
    
    func getComments () -> Array<Comment> {
        return comments;
    }
    
}
