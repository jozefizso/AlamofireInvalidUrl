import XCTest
@testable import AlamofireInvalidUrl
import Alamofire

final class AlamofireInvalidUrlTests: XCTestCase {
    func test_asURL_validAddress() throws {
        let url = try "https://www.google.com".asURL()

        XCTAssertEqual("www.google.com", url.host)
    }

    func test_asURL_emptyString() throws {
        let url = try "".asURL()
    }
}
