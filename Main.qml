import QtQuick
import QtQuick.Layouts
import QtQuick.Controls.Material

import Custom

// import customQuickControl

// import "qrc:/Custom"
// import Components
// import Style 1.0


ApplicationWindow {
    id: root
    width: 1000
    height: 500
    visible: true
    color: Style.background
    title: qsTr("Home Automation")

    Component.onCompleted: {
    }

    ColumnLayout {
        width: parent.width * 0.4
        anchors.right: parent.right
        anchors.rightMargin: 30
        anchors.top: parent.top
        anchors.topMargin: 10

        RowLayout {
            width: parent.width
            spacing: 20
            ColumnLayout  {
                spacing: 10
                RowLayout {
                    spacing: 20
                    LabDelegate {
                        showInfo: true
                        icon: "\uf0eb"
                        title: "Study Lamp"
                        isAvaible: false
                        isOpen: false
                    }
                    LabDelegate {
                        showInfo: false
                        icon: "\uf0eb"
                        title: "Bedroom Lamp"
                        isAvaible: true
                        isOpen: false
                    }
                }
                RowLayout {
                    spacing: 20
                    LabDelegate {
                        showInfo: false
                        icon: "\uf0eb"
                        title: "kitchen Lamp"
                        isAvaible: true
                        isOpen: false
                    }
                    LabDelegate {
                        showInfo: false
                        icon: "\uf0eb"
                        title: "Bathroom Lamp"
                        isAvaible: true
                        isOpen: false
                    }
                }
                RowLayout {
                    spacing: 20
                    LabDelegate {
                        showInfo: false
                        icon: "\uf0eb"
                        title: "Table Lamp"
                        isAvaible: true
                        isOpen: true
                    }
                    LabDelegate {
                        showInfo: false
                        icon: "\uf03d"
                        title: "Camera"
                        isAvaible: true
                        isOpen: false
                    }
                }
            }
        }

        RowLayout {
            Layout.preferredWidth: parent.width * 0.7
            Layout.alignment: Qt.AlignHCenter | Qt.AlignTop
            spacing: 30

            Item { Layout.fillWidth: true }

            PrefsTabButton {
                title: "Rotate"
                textIcon: "\uf2f1"
                iconColor: Style.blue
            }

            PrefsTabButton {
                title: "Time"
                textIcon: "\uf017"
                iconColor: Style.blueGreen
            }

            PrefsTabButton {
                title: "Scenes"
                textIcon: "\uf008"
                iconColor: Style.green
            }

            PrefsTabButton {
                title: "Morning"
                textIcon: "\uf185"
                iconColor: Style.yellowLight
            }
            Item { Layout.fillWidth: true }
        }

        Item {
            id: homeTab

            Item { Layout.fillHeight: true }

            Item { Layout.fillHeight: true }

            PrefsLabelSelector {
                Layout.alignment: Qt.AlignHCenter | Qt.AlignBottom
                lableList: ["\uf011","\uf013"]
            }
        }
    }
}
