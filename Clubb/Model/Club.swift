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
    var president : User
    var vicePresident : User
    var treasurer : User
    
    var id : Int
    
    init(name : String, id : Int, description : String, president : User, treasurer : User, vicePresident : User) {
        self.name = name
        self.id = id
        self.description = description
        self.president = president
        self.vicePresident = vicePresident
        self.treasurer = treasurer
    }
    
}
