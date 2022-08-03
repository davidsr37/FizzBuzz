import XCTest
@testable import FizBuzz

struct MultiplesService {
    func isMultipleOfThree(int: Int) -> Bool  {
        return false
    }
}

class FizBuzzTests: XCTestCase {
    func testMultiplesServiceExists() {
        let service = MultiplesService()
        XCTAssertNotNil(service)
    }

    func testMultipleOfThree() {
        let service = MultiplesService()
        XCTAssertFalse(service.isMultipleOfThree(int: 5))
    }
}
