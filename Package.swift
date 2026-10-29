// swift-tools-version:5.9
// Passbolt SDK for iOS: the Rust library as an XCFramework, under its UniFFI Swift bindings.
import PackageDescription

let package = Package(
    name: "PassboltSDK",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "PassboltSDK", targets: ["PassboltSDK"]),
    ],
    targets: [
        .binaryTarget(name: "passbolt_ffiFFI", url: "https://github.com/scadra/passbolt-rust-sdk/releases/download/v0.1.2/passbolt_ffiFFI.xcframework.zip", checksum: "799bb1f7af53b07ecd0de3188a210f8330ed6395220df297a02bc59140519b8b"),
        .target(
            name: "PassboltSDK",
            dependencies: ["passbolt_ffiFFI"],
            path: "Sources/PassboltSDK"
        ),
    ]
)
