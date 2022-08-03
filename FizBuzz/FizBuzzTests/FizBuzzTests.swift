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

    var array: [String] = []
    for i in 1...upperBound {

        if i.isMultipleOfThreeFive() {
            array.append("FizzBuzz")
        } else if i.isMultipleOfThree() {
            array.append("Fizz")
        } else if i.isMultipleOfFive() {
            array.append("Buzz")
        } else {
            array.append(String(i))
        }
    }
    return array
   // (1...upperBound).map {String($0)}
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

    func testFizzForMultiplesOfThree() {
        XCTAssertEqual(getArrayOfStringsFromUpperBound(3), ["1", "2", "Fizz"])
    }

    func testBuzzForMultiplesOfFive() {
        XCTAssertEqual(getArrayOfStringsFromUpperBound(5), ["1", "2", "Fizz", "4", "Buzz"])
    }
    func testFizBuzzForMultiplesOfFiveAndThree() {
        XCTAssertEqual(getArrayOfStringsFromUpperBound(15), ["1", "2", "Fizz", "4", "Buzz", "Fizz", "7", "8", "Fizz", "Buzz", "11", "Fizz", "13", "14", "FizzBuzz"])
    }
}
