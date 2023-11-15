// swift-tools-version: 5.5

import PackageDescription

let package = Package(
    name: "AlamofireInvalidUrl",
    platforms: [
        .macOS(.v11)
    ],
    products: [
        .library(
            name: "AlamofireInvalidUrl",
            targets: ["AlamofireInvalidUrl"]),
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.8.1"))
    ],
    targets: [
        .target(
            name: "AlamofireInvalidUrl",
            dependencies: [
                .product(name: "Alamofire", package: "Alamofire")
            ]),
        .testTarget(
            name: "AlamofireInvalidUrlTests",
            dependencies: ["AlamofireInvalidUrl"]),
    ]
)
