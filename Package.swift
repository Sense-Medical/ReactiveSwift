// swift-tools-version:4.0

import Foundation
import PackageDescription


let package = Package(
    name: "ReactiveSwift",
    products: [
        .library(name: "ReactiveSwift", targets: ["ReactiveSwift"])
    ],
    dependencies: [
        .package(url: "https://github.com/Sense-Medical/Result.git", .branch("cortex")),
        .package(url: "https://github.com/Quick/Quick.git", .upToNextMinor(from: "1.1.0")),
        .package(url: "https://github.com/Quick/Nimble.git", .upToNextMinor(from: "7.0.0"))
    ],
    targets: [
        .target(name: "ReactiveSwift", dependencies: ["Result"], path: "Sources"),
        .testTarget(name: "ReactiveSwiftTests", dependencies: ["ReactiveSwift", "Nimble", "Quick"], path: "Tests/ReactiveSwiftTests")
    ]
)
