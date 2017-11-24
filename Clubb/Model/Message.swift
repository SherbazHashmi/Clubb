//
//  Message.swift
//  Clubb
//
//  Created by Sherbaz Hashmi on 25/11/17.
//  Copyright © 2017 Sherbaz Hashmi. All rights reserved.
//

import Foundation

class Message : Communication {
    
    var isClubChat : Bool
    var reciever : User?
    var club : Club?
    
    init (sender : User, time : NSDate, content : String, reciever : User?, isClubChat : Bool, club : Club) {
        self.isClubChat = isClubChat;
        
        if (isClubChat == true) {
            self.club = club
        } else {
            self.reciever = reciever
        }
        super.init(sender: sender, time: time, content: content)
    }
    
    
    
    
    func getReciever () -> User? {
            return reciever;
    }
    
}
