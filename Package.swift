// swift-tools-version: 5.8
import PackageDescription

let package = Package(
    name: "IFBApplianceSDK",
    platforms: [.iOS(.v15)],
    products: [
        .library(name: "IFBApplianceSDK", targets: ["IFBApplianceSDK"]),
        .library(name: "IFBProvisioningSDK", targets: ["IFBProvisioningSDK"]),
        .library(name: "IFBSDKCore", targets: ["IFBSDKCore"])
    ],
    dependencies: [
        .package(url: "https://github.com/espressif/esp-idf-provisioning-ios.git", from: "2.1.2"),
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from: "5.8.1"))
    ],
    targets: [
        // Precompiled binaries — the actual private code, source hidden
        .binaryTarget(
            name: "IFBSDKCoreBinary",
            url: "https://github.com/radhikaIFB/IFBApplianceSDK-Distribution/releases/download/1.0.0/IFBSDKCore.xcframework.zip",
            checksum: "77b721c6c6758d7105637b51e8bca510acb8f3134acdbca5ca194c47746daa6d"
        ),
        .binaryTarget(
            name: "IFBProvisioningSDKBinary",
            url: "https://github.com/radhikaIFB/IFBApplianceSDK-Distribution/releases/download/1.0.0/IFBProvisioningSDK.xcframework.zip",
            checksum: "d0b4b0c96cafb2cd9966a74263ceb4ec997acb356f63c09426851c62fa48c3be"
        ),
        .binaryTarget(
            name: "IFBApplianceSDKBinary",
            url: "https://github.com/radhikaIFB/IFBApplianceSDK-Distribution/releases/download/1.0.0/IFBApplianceSDK.xcframework.zip",
            checksum: "cf3053f5b6fc4cfe0c4ab9a1d7b0ac0d53af6c0277c999188356f662c1716e8e"
        ),

        // Thin shim targets — restore the dependency graph binaryTarget can't express itself
        .target(
            name: "IFBSDKCore",
            dependencies: [
                "IFBSDKCoreBinary",
                .product(name: "Alamofire", package: "Alamofire")
            ],
            path: "Shims/IFBSDKCore"
        ),
        .target(
            name: "IFBProvisioningSDK",
            dependencies: [
                "IFBProvisioningSDKBinary",
                "IFBSDKCore",
                .product(name: "ESPProvision", package: "esp-idf-provisioning-ios")
            ],
            path: "Shims/IFBProvisioningSDK"
        ),
        .target(
            name: "IFBApplianceSDK",
            dependencies: [
                "IFBApplianceSDKBinary",
                "IFBProvisioningSDK"
            ],
            path: "Shims/IFBApplianceSDK"
        )
    ]
)
