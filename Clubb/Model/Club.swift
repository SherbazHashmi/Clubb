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
    
    var members = Array<User>()
    
    var id : Int
    
    init(name : String, id : Int, desc : String, president : User, treasurer : User, vicePresident : User, members : Array<User>) {
        self.name = name
        self.id = id
        self.desc = desc
        self.president = president
        self.vicePresident = vicePresident
        self.treasurer = treasurer
        self.members = members;
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
    
    var description : String {
        return name
    }
    
    func getName () -> String {
        return name
    }
    
    func  getDesc () -> String {
        return desc
    }
    
    func getPresident () -> User {
        return president
    }
    
    func getVicePresident () -> User {
        return vicePresident
    }
    
    func getTreasurer () -> User {
        return treasurer
    }
    
    func getMembers () -> Array<User> {
        return members;
    }
    
    func changePresident (new : User) {
        president = new
    }
    
    func changeVicePresident (new : User) {
        vicePresident = new
    }
    
    func changeTreasurer (new : User) {
        treasurer = new
    }
    
    func addMemer (new : User) {
        members.append(new)
        new.addClub(club: self)
    }
    
    func removeMember (user : User) {
        if(members.contains(user)) {
            if (user == president || user == vicePresident || user == treasurer) {
                print("Trying to remove President/vicePresident/Treasurer")
            } else {
                
            var tempMembers = Array<User>();
                
            for m in members {
                if (m != user) {
                    tempMembers.append(m)
                } else {
                    var tempClubs = Array<Club>();
                    for c in m.clubs {
                        if (c != self) {
                            tempClubs.append(c);
                        } else {
                            print("Removing Club From User")
                        }
                    }
                    m.clubs = tempClubs
                }
            }
                
            members = tempMembers
                
            }
        } else {
            print("The user you're trying to remove does not exist in the club")
        }
        
    }
    
    
}
