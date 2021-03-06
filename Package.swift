// swift-tools-version:5.3
//  Package.swift
//  CDYelpFusionKit
//
//  Created by Christopher de Haan on 05/07/2017.
//
//  Copyright © 2016-2020 Christopher de Haan <contact@christopherdehaan.me>
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//

import PackageDescription

let package = Package(
    name: "CDYelpFusionKit",
    platforms: [
        .macOS(.v10_12),
        .iOS(.v10),
        .tvOS(.v10),
        .watchOS(.v3)
    ],
    products: [
        .library(
            name: "CDYelpFusionKit",
            targets: ["CDYelpFusionKit"])
    ],
    dependencies: [
        .package(url: "https://github.com/Alamofire/Alamofire.git", .upToNextMajor(from:"5.2.2")),
        .package(url: "https://github.com/tristanhimmelman/ObjectMapper.git", .upToNextMajor(from:"4.2.0"))
    ],
    targets: [
        .target(
            name: "CDYelpFusionKit",
            dependencies:["Alamofire", "ObjectMapper"],
            path: "Source"
        )
    ]
    //swiftLanguageVersions: [.v5]
    )
//)

//// swift-tools-version:5.3
//// The swift-tools-version declares the minimum version of Swift required to build this package.
//
//import PackageDescription
//
//let package = Package(
//    name: "YelpImporter",
//    products: [
//        // Products define the executables and libraries a package produces, and make them visible to other packages.
//        .library(
//            name: "YelpImporter",
//            targets: ["YelpImporter"]),
//    ],
//    dependencies: [
//        .package(url: "https://github.com/brightenai/MessageBus.git", .branch("master")),
//        .package(url: "https://github.com/brightenai/Brighten.git", .branch("master")),
//        .package(url: "https://github.com/brightenai/CDYelpFusionKit.git", .branch("master")),
//    ],
//    targets: [
//        // Targets are the basic building blocks of a package. A target can define a module or a test suite.
//        // Targets can depend on other targets in this package, and on products in packages this package depends on.
//        .target(
//            name: "YelpImporter",
//            dependencies: ["MessageBus","Brighten"]),
//        .testTarget(
//            name: "YelpImporterTests",
//            dependencies: ["YelpImporter"]),
//    ]
//)
