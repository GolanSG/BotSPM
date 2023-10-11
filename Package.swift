// swift-tools-version: 5.4

import PackageDescription

let package = Package(
    name: "Bot",
    platforms: [
        .iOS(.v14)
    ],
    products: [
        .library(
            name: "Bot",
            targets: ["BotTarget"]
        )
    ],
    dependencies: [.package(url: "https://github.com/GolanSG/CoreSPM",
                            from: "1.0.0")],
    targets: [
        .target(name: "BotTarget", dependencies: [
            .target(name: "Bot", condition: .when(platforms: [.iOS])),
            .product(name: "Core", package: "CoreSPM")
        ]),
        .binaryTarget(
            name: "Bot",
            url: "https://genesysdx.jfrog.io/artifactory/genesys-cloud-ios.prod/GenesysCloudBot/GenesysCloudBot_version_t1.5.0_commit_ddc5b1e32523dc63e132ebf4778063124162385a.zip",
            checksum: "593f8f488313a545b88dbf899ea6dcd155a39b566658395730c3e3afaeb154bf"
        ),
    ]
)

//let package = Package(
//    name: "spmpoc",
//    products: [
//        .library(
//            name: "Logger",
//            targets: ["LoggerTarget"]),
//    ],
//    dependencies: [
//        .package(
//            name: "CocoaLumberjack",
//            url: "https://github.com/CocoaLumberjack/CocoaLumberjack.git",
//            from: "3.6.1"),
//    ],
//    targets: [
//        .target(
//              name: "LoggerTarget",
//              dependencies: [.target(name: "LoggerWrapper",
//                                     condition: .when(platforms: [.iOS]))]
//            ),
//        .target(
//              name: "LoggerWrapper",
//              dependencies: [
//                .target(name: "Logger", condition: .when(platforms: [.iOS])),
//                .product(name: "CocoaLumberjack", package: "CocoaLumberjack")
//              ]
//            ),
//        .binaryTarget(name: "Logger", url: "https://mypath.com/Logger.xcframework.zip", checksum: "mychecksum")
//    ]
//)
