import QtQuick.Layouts
import QtQuick
import QtQuick.Controls

import "../../Utility"
import "../../Text"
Rectangle {
    id: backgroundRectangle

    property Window window: null
    property string text: "Not set"


    Layout.fillWidth: true
    Layout.preferredHeight: 40
    color: Theme.colors.window.headLine

    BaseText
    {
        anchors.left: backgroundRectangle.left
        anchors.centerIn: backgroundRectangle.Center
        anchors.leftMargin: 20
        text:backgroundRectangle.text
        font.pointSize: Theme.sizes.text.headLine
    }

}
