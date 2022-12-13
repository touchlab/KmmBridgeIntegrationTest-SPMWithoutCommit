// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab/KmmBridgeIntegrationTest-SPMWithoutCommit/co/touchlab/kmmbridge/test/spmmanualcommit/shared-kmmbridge/1.3.33/shared-kmmbridge-1.3.33.zip"
let remoteKotlinChecksum = "a8e90340d62af2fc04e634ed972c664f396fec012e89b46c4f0b080a5d53378a"
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