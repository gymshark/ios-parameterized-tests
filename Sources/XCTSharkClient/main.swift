import Foundation
import XCTSharkParameterized

class SomethingClass {
    @InlineData("Hello World")
    @InlineData("Gymshark")
    func testingMethod(value: String) {
        print("")
    }
}
