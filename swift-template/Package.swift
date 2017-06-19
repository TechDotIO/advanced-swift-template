// swift-tools-version:3.1

import PackageDescription

let package = Package(
    name: "swift-template",
    dependencies: [
        .Package(url: "https://github.com/nsomar/FileUtils", versions: Version(0, 1, 1)..<Version(0, .max, .max))
    ]
)
