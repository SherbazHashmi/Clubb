//
//  User.swift
//  Clubb
//
//  Created by Sherbaz Hashmi on 25/11/17.
//  Copyright © 2017 Sherbaz Hashmi. All rights reserved.
//

import Foundation
class User {
    
    var firstName : String
    var lastName : String
    var uID : String
    var clubs = Array<Club>()
    
    init(firstName : String, lastName : String, uID : String, clubs : Array<Club>){
        self.firstName = firstName
        self.lastName = lastName
        self.uID = uID
        self.clubs = clubs
    }
    
    func addClub (club : Club) {
        clubs.append(club);
    }
    
    func changeElement (modFirstName : String?, modLastName : String?, modUID: String?) {
        if (modFirstName != nil) {
            firstName = modFirstName!;
        }
        
        if (modLastName != nil) {
            lastName = modLastName!;
        }
        
        if (modUID != nil) {
            uID = modUID!;
        }
    }
    
    
    // Input : Main Get Function
    // Output element from class
    func getProperty (property : String) -> Any? {
        switch property {
        case "uID": return uID
        case "lastName": return lastName
        case "firstName": return firstName
        case "clubs" : return clubs
        default : return nil
        }
    }
    
    
    
}
