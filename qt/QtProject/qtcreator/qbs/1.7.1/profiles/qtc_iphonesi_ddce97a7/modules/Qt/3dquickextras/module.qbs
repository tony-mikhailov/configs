import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "3DQuickExtras"
    Depends { name: "Qt"; submodules: ["core", "gui", "qml", "3dcore", "3dinput", "3dquick", "3drender", "3dlogic"]}

    hasLibrary: true
    staticLibsDebug: ["z", "m", "/Users/tony/Qt/5.7/ios/lib/libQt5PlatformSupport_debug.a", "/Users/tony/Qt/5.7/ios/lib/libQt53DInput_debug.a", "/Users/tony/Qt/5.7/ios/lib/libQt53DQuick_debug.a", "/Users/tony/Qt/5.7/ios/lib/libQt53DRender_debug.a", "/Users/tony/Qt/5.7/ios/lib/libQt5OpenGLExtensions_debug.a", "/Users/tony/Qt/5.7/ios/lib/libQt53DLogic_debug.a", "/Users/tony/Qt/5.7/ios/lib/libQt53DCore_debug.a", "/Users/tony/Qt/5.7/ios/lib/libQt5Gamepad_debug.a", "/Users/tony/Qt/5.7/ios/lib/libQt5Quick_debug.a", "/Users/tony/Qt/5.7/ios/lib/libQt5Gui_debug.a", "qtpng_debug", "qtharfbuzzng_debug", "/Users/tony/Qt/5.7/ios/lib/libQt5Qml_debug.a", "/Users/tony/Qt/5.7/ios/lib/libQt5Network_debug.a", "/Users/tony/Qt/5.7/ios/lib/libQt5Concurrent_debug.a", "/Users/tony/Qt/5.7/ios/lib/libQt5Core_debug.a", "z", "qtpcre_debug", "m"]
    staticLibsRelease: ["z", "m", "/Users/tony/Qt/5.7/ios/lib/libQt5PlatformSupport.a", "/Users/tony/Qt/5.7/ios/lib/libQt53DInput.a", "/Users/tony/Qt/5.7/ios/lib/libQt53DQuick.a", "/Users/tony/Qt/5.7/ios/lib/libQt53DRender.a", "/Users/tony/Qt/5.7/ios/lib/libQt5OpenGLExtensions.a", "/Users/tony/Qt/5.7/ios/lib/libQt53DLogic.a", "/Users/tony/Qt/5.7/ios/lib/libQt53DCore.a", "/Users/tony/Qt/5.7/ios/lib/libQt5Gamepad.a", "/Users/tony/Qt/5.7/ios/lib/libQt5Quick.a", "/Users/tony/Qt/5.7/ios/lib/libQt5Gui.a", "qtpng", "qtharfbuzzng", "/Users/tony/Qt/5.7/ios/lib/libQt5Qml.a", "/Users/tony/Qt/5.7/ios/lib/libQt5Network.a", "/Users/tony/Qt/5.7/ios/lib/libQt5Concurrent.a", "/Users/tony/Qt/5.7/ios/lib/libQt5Core.a", "z", "qtpcre", "m"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: ["-force_load", "/Users/tony/Qt/5.7/ios/plugins/platforms/libqios_debug.a"]
    linkerFlagsRelease: ["-force_load", "/Users/tony/Qt/5.7/ios/plugins/platforms/libqios.a"]
    frameworksDebug: ["MobileCoreServices", "Foundation", "UIKit", "CoreFoundation", "CoreText", "CoreGraphics", "OpenGLES", "Security", "SystemConfiguration", "OpenGLES"]
    frameworksRelease: ["MobileCoreServices", "Foundation", "UIKit", "CoreFoundation", "CoreText", "CoreGraphics", "OpenGLES", "Security", "SystemConfiguration", "OpenGLES"]
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt53DQuickExtras_debug"
    libNameForLinkerRelease: "Qt53DQuickExtras"
    libFilePathDebug: "/Users/tony/Qt/5.7/ios/lib/libQt53DQuickExtras_debug.a"
    libFilePathRelease: "/Users/tony/Qt/5.7/ios/lib/libQt53DQuickExtras.a"
    cpp.defines: ["QT_3DQUICKEXTRAS_LIB"]
    cpp.includePaths: ["/Users/tony/Qt/5.7/ios/include", "/Users/tony/Qt/5.7/ios/include/Qt3DQuickExtras"]
    cpp.libraryPaths: ["/Users/tony/Qt/5.7/ios/lib", "/Users/tony/Qt/5.7/ios/lib", "/Users/tony/Qt/5.7/ios/lib", "/Users/tony/Qt/5.7/ios/lib"]
    isStaticLibrary: true
}
