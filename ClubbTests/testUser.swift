//
//  testUser.swift
//  ClubbTests
//
//  Created by Sherbaz Hashmi on 25/11/17.
//  Copyright © 2017 Sherbaz Hashmi. All rights reserved.
//

import XCTest
@testable import Clubb
class testUser: XCTestCase {
    
    let clubs = Array<Club>();
    
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testGetUID () {
        
        
        let sherbaz = User(firstName: "Sherbaz", lastName: "Hashmi", uID: "u6409914", clubs: clubs)
        
        
        let expected = "u6409914"
        let actual = sherbaz.getUID()
        
        assert(actual == expected, "Expected be : "+expected+", actual :  "+actual)
        
    }
    
    func testGetFirstName () {
    
        
        let sherbaz = User(firstName: "Sherbaz", lastName: "Hashmi", uID: "u6409914", clubs: clubs)
        
        
        let expected = "Sherbaz"
        let actual = sherbaz.getFirstName()
        
        assert(actual == expected, "Expected be : "+expected+", actual :  "+actual)
        
    }
    
    func testGetLastName () {
        
        
        let sherbaz = User(firstName: "Sherbaz", lastName: "Hashmi", uID: "u6409914", clubs: clubs)
        
        
        let expected = "Hashmi"
        let actual = sherbaz.getLastName()
        
        assert(actual == expected, "Expected be : "+expected+", actual :  "+actual)
        
    }
    
    func testClubs () {
        
        let sherbaz = User(firstName: "Sherbaz", lastName: "Hashmi", uID: "u6409914", clubs: clubs)
        let GSC = Club(name: "Guitar Service Club", id: 0, desc: "Description", president: sherbaz, treasurer: sherbaz, vicePresident: sherbaz)
        
        sherbaz.addClub(club: GSC)
        
        let expected : Array<Club> = {
            var arr = Array<Club>()
            arr.append(GSC);
            
            return arr;
        }()
        
        var rtn = "";

        for a in sherbaz.getClubs() {
            rtn += a.description
        }
        
        let actual = sherbaz.getClubs()
        ()
        assert(actual == expected, "Expected be : Guitar Service Club but actual : "+rtn)
        
    }
    
    
    
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
