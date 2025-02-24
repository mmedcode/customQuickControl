set(MODULE_NAME Custom)
set(LIB_NAME ${MODULE_NAME}Lib) # GreatButtonsLib

qt_add_library(${LIB_NAME} STATIC)

set(CMAKE_AUTORCC ON)
set(CMAKE_AUTOMOC ON)

target_link_libraries(${LIB_NAME} PRIVATE Qt6::Quick)

set_source_files_properties(Style.qml PROPERTIES QT_QML_SINGLETON_TYPE TRUE)


# Add the resources.qrc file
# qt_add_resources(${LIB_NAME} "resources"
#     PREFIX "/"
#     FILES
#         resources.qrc
# )


qt_add_qml_module(${LIB_NAME}
    URI ${MODULE_NAME}
     VERSION 1.0
    RESOURCE_PREFIX /
    RESOURCES resources.qrc
    QML_FILES
        OutlinedLabel.qml
        IconLabel.qml
        PrefsLabelSelector.qml
        PrefsTabButton.qml
        LabDelegate.qml
        ShadowRectangle.qml
        Style.qml


    # FILES
    #     qmldir # Include the qmldir file
)
