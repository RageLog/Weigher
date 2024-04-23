import QtQuick.Layouts
import QtQuick
import QtQuick.Controls
RowLayout {
    id: rowLayout
    spacing: 0
    Layout.fillWidth: true
    property alias background: backgroundRectangle

    Rectangle {
        id: backgroundRectangle
        Layout.fillWidth: true
        Layout.preferredHeight: 40
        color: "red"
    }


}
