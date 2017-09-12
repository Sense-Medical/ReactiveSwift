import Foundation
import PackageDescription

var isSwiftPackagerManagerTest: Bool {
    return ProcessInfo.processInfo.environment["SWIFTPM_TEST_ReactiveSwift"] == "YES"
}

let package = Package(
    name: "ReactiveSwift",
    dependencies: {
        var deps: [Package.Dependency] = [
            .Package(url: "https://github.com/Sense-Medical/Result.git", "3.2.3"),
        ]
        if isSwiftPackagerManagerTest {
            deps += [
                .Package(url: "https://github.com/Quick/Quick.git", majorVersion: 1, minor: 1),
                .Package(url: "https://github.com/Quick/Nimble.git", majorVersion: 7),
            ]
        }
        return deps
    }(),
    swiftLanguageVersions: [3, 4]
)
