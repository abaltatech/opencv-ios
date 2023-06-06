// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.7.0"
let checksum = "4b7156c9a84b86ead98f45997efa0740cf3c47a78e110c472f366d31bac933ef"

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
