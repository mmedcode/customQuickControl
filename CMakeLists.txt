cmake_minimum_required(VERSION 3.16)

project(customQuickControl VERSION 0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD_REQUIRED ON)

set(CMAKE_AUTORCC ON)


find_package(Qt6 6.5 REQUIRED COMPONENTS Quick)

qt_standard_project_setup(REQUIRES 6.5)

qt_add_executable(appcustomQuickControl
    main.cpp
     Resources.qrc
)

qt_add_qml_module(appcustomQuickControl
    URI customQuickControl
    VERSION 1.0
    QML_FILES
        Main.qml
        QML_FILES LabDelegate.qml ShadowRectangle.qml RightDrawer.qml BottomDrawer.qml RightSideDrawerDelegate.qml

        RESOURCES
            Custom/CCTVTile.qml Custom/CircularSlider.qml Custom/CustumPrefsLabelSelector.qml Custom/DevicesTile.qml Custom/EffectButton.qml Custom/IconImage.qml
            Custom/IconLabel.qml Custom/ImageButton.qml Custom/LeftPane.qml Custom/LightingTile.qml Custom/MiddlePane.qml Custom/MiddlePaneWidget.qml Custom/OutlinedButtonWithicon.qml
            Custom/OutlinedLabel.qml Custom/PrefsCircularProgressBar.qml Custom/PrefsLabel.qml Custom/PrefsLabelSelector.qml Custom/PrefsProgressBar.qml Custom/PrefsSlider.qml
            Custom/PrefsSwitch.qml Custom/PrefsTabButton.qml Custom/RightPane.qml Custom/RightPaneLightSwitchComponent.qml Custom/RoundRectangle.qml Custom/Tile.qml
            Custom/TimeShow.qml Custom/WizardStepper.qml Style.qml
        RESOURCE_PREFIX /
)

# Qt for iOS sets MACOSX_BUNDLE_GUI_IDENTIFIER automatically since Qt 6.1.
# If you are developing for iOS or macOS you should consider setting an
# explicit, fixed bundle identifier manually though.
set_target_properties(appcustomQuickControl PROPERTIES
#    MACOSX_BUNDLE_GUI_IDENTIFIER com.example.appcustomQuickControl
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(appcustomQuickControl
    PRIVATE Qt6::Quick
)

include(GNUInstallDirs)
install(TARGETS appcustomQuickControl
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR}
    RUNTIME DESTINATION ${CMAKE_INSTALL_BINDIR}
)
