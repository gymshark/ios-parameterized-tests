<p align="center">
    <img src="./Resources/gymshark_dark.png" alt="logo" width="300" height="300">
</p>

# XCTShark

<div>
  <img alt="Static Badge" src="https://img.shields.io/badge/build-1.0.0-brightgreen?style=for-the-badge&label=ver&labelColor=545454&color=44cb11">
  <img alt="Static Badge" src="https://img.shields.io/badge/build-5.9-brightgreen?style=for-the-badge&label=Swift&labelColor=545454&color=eb7a3c">
  <img alt="Static Badge" src="https://img.shields.io/badge/build-15.0-brightgreen?style=for-the-badge&label=Xcode&labelColor=545454&color=18a0ec">
  <img alt="Static Badge" src="https://img.shields.io/badge/build-MIT-brightgreen?style=for-the-badge&label=License&labelColor=545454&color=90bd11">
</div>

## Summary

...

## Requirements

Xcode 15 or above
Swift 5.9 or later

## Installation

**Xcode project**

If you are using Xcode open `File -> Add Package Dependencies...` and enter url `https://github.com/gymshark/ios-parameterized-tests`

**Swift package manager**

In `Package.swift` add:

``` swift
dependencies: [
  .package(url: "https://github.com/gymshark/ios-parameterized-tests", branch: "main")
]
```

and then add the product to your test target.

```swift
.product(name: "XCTShark", package: "XCTShark"),
```

and import it in your UnitTest file

```swift
import XCTShark
```

## Examples
