//
//  ConvertersTests.swift
//  ConvertersTests
//
//  Created by karlis.stekels on 27/01/2023.
//

import XCTest

final class ConvertersTests: XCTestCase {

    private var sut: Converters!
    
    override func setUpWithError() throws {
        sut = Converters()
    }
    
    override func tearDownWithError() throws {
        sut = nil
    }
    
    /// Create a simple conversion with a positive number
    func test_convert10_return1080() {
        let actual = sut.convertEuroToUSD(euro: "10")
        
        let expected = "$10.80"
        
        XCTAssertEqual(actual, expected)
    }
    
    /// Negative numbers returns an error message
    func test_convertNeg10_returnsErrorMessage() {
        let actual = sut.convertEuroToUSD(euro: "-10")
        let expected = "Please enter a positive number"
        
        XCTAssertEqual(actual, expected)
    }
    
    /// Empty String returns an error message
    func test_convertEmptyString_returnsErrorMessage() {
        let actual = sut.convertEuroToUSD(euro: "")
        let expected = "Please enter a positive number"
        
        XCTAssertEqual(actual, expected)
    }
    
    
    /// Million returns an error message that value is too big
    func test_convertMillion_returnsErrorMessage() {
        let actual = sut.convertEuroToUSD(euro: "1000000")
        let expected = "Value too big to convert"
        
        XCTAssertEqual(actual, expected)
    }
    
    /// Invalid input returns an error message
    func test_convertInvalidInput_returnsErrorMessage() {
        let actual = sut.convertEuroToUSD(euro: "Hello, World!")
        let expected = "Please enter a positive number"
        
        XCTAssertEqual(actual, expected)
    }
    
    


}
