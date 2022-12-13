// swift-tools-version:5.3
import PackageDescription

let remoteKotlinUrl = "https://maven.pkg.github.com/touchlab/KmmBridgeIntegrationTest-SPMWithoutCommit/co/touchlab/kmmbridge/test/spmmanualcommit/shared-kmmbridge/1.3.30/shared-kmmbridge-1.3.30.zip"
let remoteKotlinChecksum = "1945fe1cf888360ae37becf33c8525f49c69ad21b3bc3786b6001995142410df"
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