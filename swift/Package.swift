// swift-tools-version:5.7
import PackageDescription

let package = Package(
    name: "SwiftBoilerplate",
    platforms: [
        .macOS(.v12),
        .iOS(.v15)
    ],
    products: [
        .executable(name: "SwiftBoilerplate", targets: ["SwiftBoilerplate"])
    ],
    dependencies: [],
    targets: [
        .target(
            name: "SwiftBoilerplate",
            dependencies: []
        ),
        .testTarget(
            name: "SwiftBoilerplateTests",
            dependencies: ["SwiftBoilerplate"]
        )
    ]
)