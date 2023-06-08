DIRECTORY=$(dirname "${BASH_SOURCE[0]}")

cd $DIRECTORY

rm -rf ./../Sources
 
xcrun xcodebuild archive \
 -scheme SwiftFluentEmoji \
 -configuration Release \
 -destination 'generic/platform=iOS Simulator' \
 -archivePath './build/SwiftFluentEmoji.framework-iphonesimulator.xcarchive' \
 SKIP_INSTALL=NO \
 BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

xcrun xcodebuild archive \
 -scheme SwiftFluentEmoji \
 -configuration Release \
 -destination 'generic/platform=iOS' \
 -archivePath './build/SwiftFluentEmoji.framework-iphoneos.xcarchive' \
 SKIP_INSTALL=NO \
 BUILD_LIBRARIES_FOR_DISTRIBUTION=YES

xcrun xcodebuild -create-xcframework \
 -framework './build/SwiftFluentEmoji.framework-iphoneos.xcarchive/Products/Library/Frameworks/SwiftFluentEmoji.framework' \
 -framework './build/SwiftFluentEmoji.framework-iphonesimulator.xcarchive/Products/Library/Frameworks/SwiftFluentEmoji.framework' \
 -output './../Sources/SwiftFluentEmoji.xcframework'

rm -rf ./build

cd -
