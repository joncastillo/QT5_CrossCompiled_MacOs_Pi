EXTRA_DEFINES += __arm__ thumb2 __ARM_ARCH_7__
EXTRA_INCLUDEPATH += /Users/jonathancastillo/projects/rpi/sysroot/opt/vc/include /Users/jonathancastillo/projects/rpi/sysroot/usr/include/arm-linux-gnueabihf
EXTRA_LIBDIR += /Users/jonathancastillo/projects/rpi/sysroot/opt/vc/lib/ /Users/jonathancastillo/projects/rpi/sysroot/lib/arm-linux-gnueabihf/ /Users/jonathancastillo/projects/rpi/sysroot/usr/lib /Users/jonathancastillo/projects/rpi/sysroot/usr/lib/arm-linux-gnueabihf
host_build {
    QT_CPU_FEATURES.x86_64 = cx16 mmx sse sse2 sse3 ssse3
} else {
    QT_CPU_FEATURES.arm = neon
}
QT.global_private.enabled_features = alloca_h alloca dbus dbus-linked gui network posix_fallocate qml-debug reduce_exports sql system-zlib testlib widgets xml
QT.global_private.disabled_features = sse2 alloca_malloc_h android-style-assets avx2 private_tests libudev reduce_relocations release_tools stack-protector-strong
PKG_CONFIG_EXECUTABLE = /opt/local/bin/pkg-config
QMAKE_LIBS_DBUS = -L/Users/jonathancastillo/projects/rpi/sysroot/usr/lib/arm-linux-gnueabihf -ldbus-1
QMAKE_INCDIR_DBUS = /Users/jonathancastillo/projects/rpi/sysroot/usr/include/dbus-1.0 /Users/jonathancastillo/projects/rpi/sysroot/usr/lib/arm-linux-gnueabihf/dbus-1.0/include
QT_COORD_TYPE = double
QMAKE_LIBS_ZLIB = -lz
CONFIG += cross_compile use_gold_linker compile_examples enable_new_dtags largefile neon precompile_header
QT_BUILD_PARTS += libs
QT_HOST_CFLAGS_DBUS += -I/usr/include/dbus-1.0 -I/usr/lib/arm-linux-gnueabihf/dbus-1.0/include
