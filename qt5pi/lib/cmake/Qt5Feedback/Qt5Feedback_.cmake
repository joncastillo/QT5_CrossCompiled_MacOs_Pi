
add_library(Qt5:: MODULE IMPORTED)

_populate_Feedback_plugin_properties( RELEASE "feedback/libqtfeedback_mmk.so")

list(APPEND Qt5Feedback_PLUGINS Qt5::)
