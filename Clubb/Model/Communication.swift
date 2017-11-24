//
//  Communication.swift
//  Clubb
//
//  Created by Sherbaz Hashmi on 25/11/17.
//  Copyright © 2017 Sherbaz Hashmi. All rights reserved.
//

import Foundation

class Communication {
    
    var sender : User
    var time : NSDate
    var content : String
    
    init(sender : User, time : NSDate, content : String) {
        self.sender = sender
        self.time = time
        self.content = content
    }
    
    func getContent () -> String{
        return content
    }
    
    func getTime () -> NSDate {
        return time
    }
    
    func getSender () -> User {
        return sender
    }
    
    
    
}
