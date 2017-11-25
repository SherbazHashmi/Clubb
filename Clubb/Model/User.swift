//
//  User.swift
//  Clubb
//
//  Created by Sherbaz Hashmi on 25/11/17.
//  Copyright © 2017 Sherbaz Hashmi. All rights reserved.
//

import Foundation
public class User : Equatable {
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
    
    
    /*
     addClub appends the clubs.
     Input : Club
     Output : Void
     */
    
    
    func addClub (club : Club) {
        clubs.append(club);
    }
    
    /*
     Input : The element(s) you wish to change, the ones to remain the same should be nill.
     Output : Void, changes element in class.
 
     */
    
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
    
    
    // Input : String describing desired element from class.
    // Output : Chosen element from class or nil.
    // Example : person.getUID() -> u632322
    
    
    func getFirstName() -> String {
        return firstName;
    }
    
    func getUID() -> String {
        return uID;
    }
    
    func getLastName() -> String {
        return lastName;
    }
    
    func getClubs () -> Array<Club> {
        return clubs;
    }
    
    
    
    func addToDB () {
        
    }
    
    
    public static func == (prefix : User, postfix : User) -> Bool{
        return
        prefix.firstName == postfix.firstName
        &&
        prefix.lastName == postfix.lastName
        &&
        prefix.uID == postfix.uID
        &&
        prefix.clubs == postfix.clubs
    }
    
    
}
