//
//  Club.swift
//  Clubb
//
//  Created by Sherbaz Hashmi on 25/11/17.
//  Copyright © 2017 Sherbaz Hashmi. All rights reserved.
//

import Foundation

class Club {
    
    var name : String
    var description : String
    var leader : User
    var id : Int
    
    init(name : String, id : Int, description : String, leader : User) {
        self.name = name
        self.id = id
          self.description = description
        self.leader = leader
      
    }
    
}
