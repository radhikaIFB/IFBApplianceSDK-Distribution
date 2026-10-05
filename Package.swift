// swift-tools-version: 5.8
import PackageDescription
let package = Package(
    name: "IFBApplianceSDK",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "IFBApplianceSDK",
            targets: ["IFBApplianceSDK", "IFBProvisioningSDK", "IFBSDKCore"]
        ),
        .library(
            name: "IFBProvisioningSDK",
            targets: ["IFBProvisioningSDK", "IFBSDKCore"]
        ),
        .library(
            name: "IFBSDKCore",
            targets: ["IFBSDKCore"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "IFBSDKCore",
            url: "https://github.com/radhikaIFB/IFBApplianceSDK-Distribution/releases/download/1.0.4/IFBSDKCore.xcframework.zip",
            checksum: "84de68f8647f17f31e8e84281c71bbdf45dc0569ff5e2047f958e9afa540cdf9"
        ),
        .binaryTarget(
            name: "IFBProvisioningSDK",
            url: "https://github.com/radhikaIFB/IFBApplianceSDK-Distribution/releases/download/1.0.4/IFBProvisioningSDK.xcframework.zip",
            checksum: "a4fc704748be33992a075e036c97ed8556fcd4d96f65e2bcee5841c9a45dae96"
        ),
        .binaryTarget(
            name: "IFBApplianceSDK",
            url: "https://github.com/radhikaIFB/IFBApplianceSDK-Distribution/releases/download/1.0.4/IFBApplianceSDK.xcframework.zip",
            checksum: "a0bf298674655d5254325603ceb90adff94cb680184e3f469a84f9cdb8919035"
        )
    ]
)
