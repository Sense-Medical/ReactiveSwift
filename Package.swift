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
        .package(url: "https://github.com/Sense-Medical/Quick.git", .branch("cortex")),
        .package(url: "https://github.com/Sense-Medical/Nimble.git", .branch("cortex"))
    ],
    targets: [
        .target(name: "ReactiveSwift", dependencies: ["Result"], path: "Sources"),
        .testTarget(name: "ReactiveSwiftTests", dependencies: ["ReactiveSwift", "Nimble", "Quick"], path: "Tests/ReactiveSwiftTests")
    ]
)
