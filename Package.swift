// swift-tools-version:5.9
import PackageDescription

let package = Package(
    name: "XMediatorIronSource",
    platforms: [.iOS(.v13)],
    products: [
        .library(name: "XMediatorIronSource", targets: ["XMediatorIronSourceTarget"]),
    ],
    dependencies: [
        .package(url: "https://github.com/ironsource-mobile/LevelPlay-Swift-Package", exact: "9.6.1"),
        .package(url: "https://github.com/x3mads/xmediator-swift-package.git", .upToNextMajor(from: "1.159.0")),
    ],
    targets: [
        .target(
            name: "XMediatorIronSourceTarget",
            dependencies: [
                .target(name: "XMediatorIronSource"),
                .product(name: "XMediator", package: "xmediator-swift-package"),
                .product(name: "UnityMediationSDK", package: "LevelPlay-Swift-Package"),
            ],
            path: "XMediatorIronSourceTarget",
            linkerSettings: []
        ),
        .binaryTarget(
            name: "XMediatorIronSource",
            url: "https://ios-artifact-registry.x3mads.com/cocoapods/XMediatorIronSource/XMediatorIronSource-9.6.1.0.0.zip",
            checksum: "672df3aaab4d57116506185d6c491f23c15751ecfa1c6c12b088d2d27fcc8f7e"
        ),
    ]
)
