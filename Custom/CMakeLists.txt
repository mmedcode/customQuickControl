set(MODULE_NAME Custom)
set(LIB_NAME ${MODULE_NAME}Lib) 

qt_add_library(${LIB_NAME} STATIC)

set_target_properties(${LIB_NAME} PROPERTIES AUTOMOC ON)
set_target_properties(${LIB_NAME} PROPERTIES CMAKE_AUTORCC ON)
set_target_properties(${LIB_NAME} PROPERTIES CMAKE_AUTOUIC ON)

target_link_libraries(${LIB_NAME} PRIVATE Qt6::Quick)


set_source_files_properties(Style.qml PROPERTIES QT_QML_SINGLETON_TYPE TRUE)

qt_add_qml_module(${LIB_NAME}
    URI ${MODULE_NAME}
    # VERSION 1.0
    QML_FILES
        IconLabel.qml
        LabDelegate.qml
        OutlinedLabel.qml
        PrefsLabelSelector.qml
        PrefsTabButton.qml
        ShadowRectangle.qml
        Style.qml
        RESOURCES
            fonts/fontawesome.otf
        RESOURCE_PREFIX /
)


# set(QRC_FILE resources.qrc)
# add_library(MyQmlModule SHARED ${QRC_FILE})
# target_link_libraries(${LIB_NAME} Qt6::Core Qt6::Qml Qt6::Quick)