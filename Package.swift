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
            url: "https://github.com/radhikaIFB/IFBApplianceSDK-Distribution/releases/download/1.0.3/IFBSDKCore.xcframework.zip",
            checksum: "d203232a57a9f0a3cac9b9c7511ad7b92bf785f9b76275e8b4945a8ce0d1f100"
        ),
        .binaryTarget(
            name: "IFBProvisioningSDK",
            url: "https://github.com/radhikaIFB/IFBApplianceSDK-Distribution/releases/download/1.0.3/IFBProvisioningSDK.xcframework.zip",
            checksum: "b989cb7d0453eec3349d0b4a50702d508388b7952c5b86b4f5e8d11953cc3e35"
        ),
        .binaryTarget(
            name: "IFBApplianceSDK",
            url: "https://github.com/radhikaIFB/IFBApplianceSDK-Distribution/releases/download/1.0.3/IFBApplianceSDK.xcframework.zip",
            checksum: "2666af3489869324b9539746564539b66282bdc821aaa60261f124af70e9b107"
        )
    ]
)