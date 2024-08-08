// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.10.0"
let checksum = "50dd78d19f614a1cc727afdb90abf7ba978970993d616f058413e7b72d3b8bc1"

let package = Package(
    name: "OpenCV",
    platforms: [
        .macOS(.v10_13), .iOS(.v16), .macCatalyst(.v13)
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
