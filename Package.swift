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
        .binaryTarget(name: "passbolt_ffiFFI", url: "https://github.com/scadra/passbolt-rust-sdk/releases/download/v0.1.1/passbolt_ffiFFI.xcframework.zip", checksum: "ac5965e314e19f10f05286f0fe0de143c8440c5f2a82dcc37d0fee16303391c7"),
        .target(
            name: "PassboltSDK",
            dependencies: ["passbolt_ffiFFI"],
            path: "Sources/PassboltSDK"
        ),
    ]
)
