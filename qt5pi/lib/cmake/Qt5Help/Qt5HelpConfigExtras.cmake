
if (NOT TARGET Qt5::qcollectiongenerator)
    add_executable(Qt5::qcollectiongenerator IMPORTED)

    set(imported_location "/Users/jonathancastillo/projects/QT5/qt5mac/bin/qcollectiongenerator")
    _qt5_Help_check_file_exists(${imported_location})

    set_target_properties(Qt5::qcollectiongenerator PROPERTIES
        IMPORTED_LOCATION ${imported_location}
    )
endif()

if (NOT TARGET Qt5::qhelpgenerator)
    add_executable(Qt5::qhelpgenerator IMPORTED)

    set(imported_location "/Users/jonathancastillo/projects/QT5/qt5mac/bin/qhelpgenerator")
    _qt5_Help_check_file_exists(${imported_location})

    set_target_properties(Qt5::qhelpgenerator PROPERTIES
        IMPORTED_LOCATION ${imported_location}
    )
endif()
