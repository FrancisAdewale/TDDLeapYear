//
//  TDDLeapYearTests.swift
//  TDDLeapYearTests
//
//  Created by Francis Adewale on 03/05/2021.
//

import XCTest
@testable import TDDLeapYear

class TDDLeapYearTests: XCTestCase {
    
    var sut: ViewController?

    override func setUp()  {
        super.setUp()
        sut = ViewController()
    }

    override func tearDown()  {
        sut = nil
        super.tearDown()
    }

    func test_readsUserInput() {
        
        //given
        sut?.setUpUserInput.text = "2004"
        
        //when
        
        sut!.submittedLeapYear()
        
        
        //then
        XCTAssertEqual(sut?.userInput, 2004)
        
    }
    
    func test_doesNotReadInvalidinput() {
        //given
        
        sut?.setUpUserInput.text = "djfbdjf"
        
        
        //when
        
        sut?.submittedLeapYear()
        
        
        //then
        
        XCTAssertNil(sut?.userInput)
    }
    
    

}
