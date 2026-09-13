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
        // Precompiled binaries with Swift modules embedded
        .binaryTarget(
            name: "IFBSDKCoreBinary",
            url: "https://github.com/radhikaIFB/IFBApplianceSDK-Distribution/releases/download/1.0.2/IFBSDKCore.xcframework.zip",
            checksum: "85c6aeb21f5bf18ee197849da9a83d1504536b2ea5f40e7625f6e19c3a596eb6"
        ),
        .binaryTarget(
            name: "IFBProvisioningSDKBinary",
            url: "https://github.com/radhikaIFB/IFBApplianceSDK-Distribution/releases/download/1.0.2/IFBProvisioningSDK.xcframework.zip",
            checksum: "1df84e9c23d3f081d457adb8e525deb70c5a2c0fc48e1b21822a3685d9162e0a"
        ),
        .binaryTarget(
            name: "IFBApplianceSDKBinary",
            url: "https://github.com/radhikaIFB/IFBApplianceSDK-Distribution/releases/download/1.0.2/IFBApplianceSDK.xcframework.zip",
            checksum: "3f7bff07cde9926154c88684659e6859f78026689e376584f1b178426d3b3e60"
        ),

        // Shim targets linking the dependency hierarchy
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