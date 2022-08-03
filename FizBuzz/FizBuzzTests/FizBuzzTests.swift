import XCTest
@testable import FizBuzz


extension Int {

    func isMultipleOfThree() -> Bool  {
        self.isMultiple(of: 3)
    }

    func isMultipleOfFive() -> Bool {
        self.isMultiple(of: 5)
    }

    func isMultipleOfThreeFive() -> Bool {
        self.isMultipleOfFive() && self.isMultipleOfThree()
    }
}

func getArrayOfStringsFromUpperBound(_ upperBound: Int) -> [String] {
    (1...upperBound).map {String($0)}
}

class FizBuzzTests: XCTestCase {

    func testMultipleOfThree() {
        XCTAssertFalse(5.isMultipleOfThree())
        XCTAssertTrue(6.isMultipleOfThree())
    }

    func testMultipleOfFive() {
        XCTAssertTrue(5.isMultipleOfFive())
        XCTAssertFalse(6.isMultipleOfFive())
    }

    func testMultipleOfThreeAndFive() {
        XCTAssertTrue(15.isMultipleOfThreeFive())
    }

    func testArrayOutputStrings() {
        let array = getArrayOfStringsFromUpperBound(3)
        let result = ["1", "2", "3"]
        XCTAssertEqual(array, result)
    }

    func testArrayOutputStringsForFour() {
        let array = getArrayOfStringsFromUpperBound(4)
        let result = ["1", "2", "3", "4"]
        XCTAssertEqual(array, result)
    }

}
