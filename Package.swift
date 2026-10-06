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
            url: "https://github.com/radhikaIFB/IFBApplianceSDK-Distribution/releases/download/1.0.6/IFBSDKCore.xcframework.zip",
            checksum: "829cdff0d0a222268ed72ab66caefd537aea6bffa8777737fd1ea73ce2d67f19"
        ),
        .binaryTarget(
            name: "IFBProvisioningSDK",
            url: "https://github.com/radhikaIFB/IFBApplianceSDK-Distribution/releases/download/1.0.6/IFBProvisioningSDK.xcframework.zip",
            checksum: "5458a26e63e25a04fa8a986b9c595cc0b781f3ca225627b96246c5300fc333f7"
        ),
        .binaryTarget(
            name: "IFBDashboardSDK",
            url: "https://github.com/radhikaIFB/IFBApplianceSDK-Distribution/releases/download/1.0.6/IFBDashboardSDK.xcframework.zip",
            checksum: "6c9a249d587ae224e35ae740e677750ac916f17e0e9be63aa78afccbc5659438"
        ),
        .binaryTarget(
            name: "IFBACControlSDK",
            url: "https://github.com/radhikaIFB/IFBApplianceSDK-Distribution/releases/download/1.0.6/IFBACControlSDK.xcframework.zip",
            checksum: "02a27f6e4384c43c9475224791119c9281751dada8ba67c68833ec652870c38f"
        ),
        .binaryTarget(
            name: "IFBApplianceSDK",
            url: "https://github.com/radhikaIFB/IFBApplianceSDK-Distribution/releases/download/1.0.6/IFBApplianceSDK.xcframework.zip",
            checksum: "472522fd23a87e38652844e0bae25b578383d15b706d67da8409130de845a62c"
        )
    ]
)
