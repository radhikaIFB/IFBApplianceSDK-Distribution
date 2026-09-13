// swift-tools-version: 5.8
import PackageDescription
let package = Package(
    name: "IFBApplianceSDK",
    platforms: [.iOS(.v15)],
    products: [
        .library(
            name: "IFBApplianceSDK",
            targets: ["IFBApplianceSDK"]
        ),
    ],
    targets: [
        .binaryTarget(
            name: "IFBApplianceSDK",
            url: "https://github.com/radhikaIFB/IFBApplianceSDK-Distribution/releases/download/1.0.1/IFBApplianceSDK.xcframework.zip",
            checksum: "2b1a1936cb897cdf0e6e61d0b8e08983f957f9a89e707cb3deb831add6dcc776"
        )
    ]
)