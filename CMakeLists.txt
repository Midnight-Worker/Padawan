cmake_minimum_required(VERSION 3.16)

project(Padawan VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Quick QuickControls2 Quick3D)

qt_standard_project_setup(REQUIRES 6.10)

qt_add_executable(appAndroidBoiler
    main.cpp
)

qt_add_qml_module(appAndroidBoiler
    URI AndroidBoiler
    QML_FILES
        main.qml
)


target_link_libraries(appAndroidBoiler
    PRIVATE
        Qt6::Quick
        Qt6::QuickControls2
        Qt6::Quick3D
)

install(TARGETS appAndroidBoiler
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
