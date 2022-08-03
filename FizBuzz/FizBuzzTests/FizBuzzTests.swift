import XCTest
@testable import FizBuzz

struct MultiplesService {
    func isMultipleOfThree(int: Int) -> Bool  {
        int.isMultiple(of: 3)
    }

    func isMultipleOfFive(int: Int) -> Bool {
        int.isMultiple(of: 5)
    }
}

class FizBuzzTests: XCTestCase {

    let service = MultiplesService()

    func testMultiplesServiceExists() {
        XCTAssertNotNil(service)
    }

    func testMultipleOfThree() {
        XCTAssertFalse(service.isMultipleOfThree(int: 5))
        XCTAssertTrue(service.isMultipleOfThree(int: 6))
    }

    func testMultipleOfFive() {
        XCTAssertTrue(service.isMultipleOfFive(int: 5))
        XCTAssertFalse(service.isMultipleOfFive(int: 6))
    }

}
