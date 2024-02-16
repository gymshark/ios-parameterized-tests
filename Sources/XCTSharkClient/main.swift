import XCTShark
import Foundation

public enum Tolerance {
    case na
    case skuStrict
    case handleScrict
    case availableSizesIdStrict
    case availableSizesSkuStrict
    
    public var getValue: String {
        switch self {
        case .na:
            return "na"
        case .skuStrict:
            return "skuStrict"
        case .handleScrict:
            return "handleScrict"
        case .availableSizesIdStrict:
            return "availableSizesIdStrict"
        case .availableSizesSkuStrict:
            return "availableSizesSkuStric"
        }
    }
}

class SomethingClass {
//    @InlineData("hello")
//    @InlineData("hello2")
    func testingMethods(value: String) -> URLRequest {
        return URLRequest(url: URL(string: "www.gymshark.com")!)
    }
    
//    @InlineData("Hello World")
//    @InlineData("Gymshark")
    func testingMethod(value: String) {
        print("")
    }
}
