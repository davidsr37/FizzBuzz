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

}
