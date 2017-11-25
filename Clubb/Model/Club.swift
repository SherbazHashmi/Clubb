//
//  Club.swift
//  Clubb
//
//  Created by Sherbaz Hashmi on 25/11/17.
//  Copyright © 2017 Sherbaz Hashmi. All rights reserved.
//

import Foundation

class Club : Equatable, CustomStringConvertible {
    
    var name : String
    var desc : String
    var president : User
    var vicePresident : User
    var treasurer : User
    
    var id : Int
    
    init(name : String, id : Int, desc : String, president : User, treasurer : User, vicePresident : User) {
        self.name = name
        self.id = id
        self.desc = desc
        self.president = president
        self.vicePresident = vicePresident
        self.treasurer = treasurer
    }
    
    public static func == (prefix : Club, postfix : Club) -> Bool {
        return
        prefix.desc == postfix.desc
        &&
        prefix.id == postfix.id
        &&
        prefix.name == postfix.name
        &&
        prefix.president == postfix.president
        &&
        prefix.treasurer == postfix.treasurer
        &&
        prefix.vicePresident == postfix.vicePresident
        
    }
    
    public var description : String {
        return name
    }
    
    
     
    
}
