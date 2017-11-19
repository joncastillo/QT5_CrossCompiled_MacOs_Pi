!host_build {
    QMAKE_CFLAGS    += --sysroot=$$[QT_SYSROOT]
    QMAKE_CXXFLAGS  += --sysroot=$$[QT_SYSROOT]
    QMAKE_LFLAGS    += --sysroot=$$[QT_SYSROOT]
}
host_build {
    QT_ARCH = x86_64
    QT_BUILDABI = x86_64-little_endian-lp64
    QT_TARGET_ARCH = arm
    QT_TARGET_BUILDABI = arm-little_endian-ilp32-eabi-hardfloat
} else {
    QT_ARCH = arm
    QT_BUILDABI = arm-little_endian-ilp32-eabi-hardfloat
}
QT.global.enabled_features = cross_compile shared rpath c++11 c++14 c++1z concurrent pkg-config
QT.global.disabled_features = framework appstore-compliant debug_and_release simulator_and_device build_all force_asserts separate_debug_info static
PKG_CONFIG_SYSROOT_DIR = /Users/jonathancastillo/projects/rpi/sysroot
PKG_CONFIG_LIBDIR = /Users/jonathancastillo/projects/rpi/sysroot/usr/lib/pkgconfig:/Users/jonathancastillo/projects/rpi/sysroot/usr/share/pkgconfig:/Users/jonathancastillo/projects/rpi/sysroot/usr/lib/armv8-rpi3-linux-gnueabihf/pkgconfig
CONFIG += cross_compile shared release
QT_CONFIG += shared rpath release c++11 c++14 c++1z concurrent dbus reduce_exports stl
QT_VERSION = 5.10.0
QT_MAJOR_VERSION = 5
QT_MINOR_VERSION = 10
QT_PATCH_VERSION = 0
QT_GCC_MAJOR_VERSION = 7
QT_GCC_MINOR_VERSION = 2
QT_GCC_PATCH_VERSION = 0
QT_EDITION = OpenSource
