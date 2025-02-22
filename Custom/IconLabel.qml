import QtQuick
import QtQuick.Controls
// import Style 1.0
import customQuickControl

Label {
    property real size: 24
    property string icon
    property bool appicon: true

    text: icon
    font.pixelSize: size
    font.family: appicon ? Style.fontawesomefont : "Lato"
}
