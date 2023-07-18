# opencv-ios

This is a swift package that exposes opencv2.xcframework built from the official [OpenCV](https://github.com/opencv/opencv) github repository. This simplifies the process of importing the prebuilt opencv2.xcframework into your project, eliminating the need for manual building.

# Table of Contents
- [Installation](#installation)
  - [Swift Package Manager](#swift-package-manager)
  - [Xcode](#xcode)
- [Documentation](#documentation)
- [Usage](#usage)
## Installation

To use `OpenCV` in your own project, you can use:   
### Swift Package Manager

```swift
// swift-tools-version:5.6
import PackageDescription

let package = Package(
  name: "MyPackage",
  dependencies: [
    .package(
      url: "https://github.com/abaltatech/opencv-ios.git", 
      .upToNextMajor(from: "4.7.0") // or `.upToNextMinor
    )
  ],
  targets: [
    .target(
      name: "MyTarget",
      dependencies: [
        .product(name: "OpenCV", package: "opencv-ios")
      ]
    )
  ]
)
```

### Xcode
Add https://github.com/abaltatech/opencv-ios.git to your package dependencies 
  ![add-package](img/add-package.png)

## Documentation
You can view the api reference docs at https://docs.opencv.org/4.x/  
For more information you can visit the official [OpenCV](https://github.com/opencv/opencv) repository
## Usage
Include the c++ headers
```c++
#include <opencv2/opencv.hpp>
```

