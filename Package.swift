// swift-tools-version: 5.8
import PackageDescription
let package = Package(
    name: "IFBApplianceSDK",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "IFBApplianceSDK",
            targets: [
                           "IFBApplianceSDK",
                           "IFBProvisioningSDK",
                           "IFBDashboardSDK",
                           "IFBACControlSDK",
                           "IFBSDKCore"
                       ]
        ),
        .library(
            name: "IFBProvisioningSDK",
            targets: ["IFBProvisioningSDK", "IFBSDKCore"]
        ),
        .library(
            name: "IFBDashboardSDK",
            targets: ["IFBDashboardSDK", "IFBSDKCore"]
        ),
        .library(
            name: "IFBACControlSDK",
            targets: ["IFBACControlSDK", "IFBSDKCore"]
        ),
        .library(
            name: "IFBSDKCore",
            targets: ["IFBSDKCore"]
        )
    ],
    targets: [
        .binaryTarget(
            name: "IFBSDKCore",
            url: "https://github.com/radhikaIFB/IFBApplianceSDK-Distribution/releases/download/1.0.7/IFBSDKCore.xcframework.zip",
            checksum: "829cdff0d0a222268ed72ab66caefd537aea6bffa8777737fd1ea73ce2d67f19"
        ),
        .binaryTarget(
            name: "IFBProvisioningSDK",
            url: "https://github.com/radhikaIFB/IFBApplianceSDK-Distribution/releases/download/1.0.7/IFBProvisioningSDK.xcframework.zip",
            checksum: "c33a36a84e7fa9fd40f58a49a955d6dfe543d2a90640d1e91f7785129c8d5169"
        ),
        .binaryTarget(
            name: "IFBDashboardSDK",
            url: "https://github.com/radhikaIFB/IFBApplianceSDK-Distribution/releases/download/1.0.7/IFBDashboardSDK.xcframework.zip",
            checksum: "6c9a249d587ae224e35ae740e677750ac916f17e0e9be63aa78afccbc5659438"
        ),
        .binaryTarget(
            name: "IFBACControlSDK",
            url: "https://github.com/radhikaIFB/IFBApplianceSDK-Distribution/releases/download/1.0.7/IFBACControlSDK.xcframework.zip",
            checksum: "02a27f6e4384c43c9475224791119c9281751dada8ba67c68833ec652870c38f"
        ),
        .binaryTarget(
            name: "IFBApplianceSDK",
            url: "https://github.com/radhikaIFB/IFBApplianceSDK-Distribution/releases/download/1.0.7/IFBApplianceSDK.xcframework.zip",
            checksum: "472522fd23a87e38652844e0bae25b578383d15b706d67da8409130de845a62c"
        )
    ]
)
