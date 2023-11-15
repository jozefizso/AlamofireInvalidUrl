// The Swift Programming Language
// https://docs.swift.org/swift-book

import Alamofire

struct AlamofireLib {
    let info = "v1.0.0"

    func request() {
        let _ = AF.request("https://www.google.com")
    }
}
