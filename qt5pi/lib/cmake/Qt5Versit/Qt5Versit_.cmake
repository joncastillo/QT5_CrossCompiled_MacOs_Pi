
add_library(Qt5:: MODULE IMPORTED)

_populate_Versit_plugin_properties( RELEASE "versit/libqtversit_vcardpreserver.so")

list(APPEND Qt5Versit_PLUGINS Qt5::)
