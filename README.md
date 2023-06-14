# Swift Fluent Emoji

Including all Flat only(There is no 3D/Color/High Contrast) SVG from https://github.com/microsoft/fluentui-emoji/tree/main/assets.

## Usage

Use Swift Package Manager add this framework.

`FluentEmoji.getSVG("🎠") -> Data?`

## Supported minimum iOS version

iOS 14.0

## Library size impact

The size of the library files that will be included in your project is about `24 MB`(`ios-arm64` + `ios-arm64_x86_64-simulator`).

If you embedded [SwiftFluentEmoji](https://github.com/zizicici/swift-fluent-emoji) and [SwiftNotoEmoji](https://github.com/zizicici/swift-noto-emoji), your app download size will increase about `16MB`, install size will increase about `66MB`.
