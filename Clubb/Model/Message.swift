//
//  Message.swift
//  Clubb
//
//  Created by Sherbaz Hashmi on 25/11/17.
//  Copyright © 2017 Sherbaz Hashmi. All rights reserved.
//

import Foundation

class Message : Communication {
    
    var reciever : User
    
    init (sender : User, time : NSDate, content : String, reciever : User) {
        self.reciever = reciever
        super .init(sender: sender, time: time, content: content)
    }
    
    
    func getReciever () -> User {
        return reciever
    }
    
}
