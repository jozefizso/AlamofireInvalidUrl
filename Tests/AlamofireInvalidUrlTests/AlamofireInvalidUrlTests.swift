import XCTest
@testable import AlamofireInvalidUrl
import Alamofire

final class AlamofireInvalidUrlTests: XCTestCase {
    func test_asURL_validAddress() throws {
        let url = try "https://www.google.com".asURL()

        XCTAssertEqual("www.google.com", url.host)
    }

    func test_asURL_emptyString() throws {
        XCTAssertThrowsError(try "".asURL()) { error in
            let afError = error as? AFError
            XCTAssertNotNil(afError)
            XCTAssertTrue(afError!.isInvalidURLError)
        }
    }
    
    func test_asURL_unencodedAddress() throws {
        _ = try "http://www.example.org/path/File name with spaces.txt".asURL()
    }
    
    func test_asURL_encodedAddress() throws {
        let url = try "http://www.example.org/path/File%20name%20with%20spaces.txt".asURL()
        
        XCTAssertEqual("www.example.org", url.host)
    }
}
