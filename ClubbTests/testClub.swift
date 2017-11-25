//
//  testClub.swift
//  ClubbTests
//
//  Created by Sherbaz Hashmi on 25/11/17.
//  Copyright © 2017 Sherbaz Hashmi. All rights reserved.
//

import XCTest
@testable import Clubb

class testClub: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    
    func testAddMember () {
        let clubs = Array<Club>()
        
        let sherbaz = User(firstName: "Sherbaz", lastName: "Hashmi", uID: "u6409914", clubs: clubs, university : "Australian National University")
        
        let members = Array<User>()
        
        let homeRun = Club(name: "Home Run", id: 1, desc: "Description", president: sherbaz, treasurer: sherbaz, vicePresident: sherbaz, members: members)
        
        homeRun.addMemer(new: sherbaz)
        
        var membersHomeRun = homeRun.getMembers()
        
        assert(membersHomeRun.contains(sherbaz), "After adding member, member is not contained in members field")
        let heloise = User(firstName: "Heloise", lastName: "Duce", uID: "u6039914", clubs: clubs, university : "Australian National University")
        
        homeRun.addMemer(new: heloise)
        
        membersHomeRun = homeRun.getMembers();
        
        assert(membersHomeRun.contains(sherbaz), "After adding member, member is not contained in members field")
        assert(membersHomeRun.contains(heloise), "After adding member, member is not contained in members field")
    }
    
    func testRemoveMember (user : User) {
    }
    
}
