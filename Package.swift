// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.7.0"
let checksum = "ecb0ea13a349e6f02ec47a9e548b3904dc05cccc1610120f1b2f9d33eb730b55"

let package = Package(
    name: "OpenCV",
    platforms: [
        .macOS(.v10_13), .iOS(.v11), .macCatalyst(.v13)
    ],
    products: [
        .library(
            name: "OpenCV",
            targets: ["opencv2"])
    ],
    targets: [
        .binaryTarget(name: "opencv2",
                      url: "https://github.com/abaltatech/opencv-ios/releases/download/\(version)/opencv2.xcframework.zip",
                      checksum: checksum)
    ]
)
