// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab/KmmBridgeIntegrationTest-SPMWithoutCommit/co/touchlab/kmmbridge/test/spmmanualcommit/shared-kmmbridge/1.3.28/shared-kmmbridge-1.3.28.zip"
let remoteKotlinChecksum = "0c98f2a41ce148930db31fa8f3433a544c788433f53da807da0d07c51100ead2"
let packageName = "shared"

let package = Package(
    name: packageName,
    platforms: [
        .iOS(.v13)
    ],
    products: [
        .library(
            name: packageName,
            targets: [packageName]
        ),
    ],
    targets: [
        .binaryTarget(
            name: packageName,
            url: remoteKotlinUrl,
            checksum: remoteKotlinChecksum
        )
        ,
    ]
)