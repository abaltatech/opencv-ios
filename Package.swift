// swift-tools-version: 5.7
// The swift-tools-version declares the minimum version of Swift required to build this package.

import PackageDescription

let version = "4.10.0"
let checksum = "6bb037a2e242e87397be298f372d20d61f4a6ee109e2e68a0d7c19fd9af0905f"

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
