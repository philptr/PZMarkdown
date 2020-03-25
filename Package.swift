// swift-tools-version:5.0

import PackageDescription

let package = Package(
    name: "PZMarkdown",
    products: [
        .library(name: "PZMarkdown", targets: ["PZMarkdown"]),
        .library(name: "Ccmark", targets: ["Ccmark"]),

    ],
    dependencies: [],
    targets: [
        .target(name: "PZMarkdown", dependencies: ["Ccmark"]),
        .systemLibrary(
          name: "Ccmark",
          pkgConfig: "libcmark",
          providers: [
            .brew(["commonmark"])
          ]),
        .testTarget(name: "PZMarkdownTests", dependencies: ["PZMarkdown"]),
    ]
)
