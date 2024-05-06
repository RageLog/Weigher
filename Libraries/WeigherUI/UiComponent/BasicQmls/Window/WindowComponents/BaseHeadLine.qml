import QtQuick.Layouts
import QtQuick
import QtQuick.Controls

import "../../Utility"
import "../../Text"
import "../../Button"

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
        anchors.verticalCenter: backgroundRectangle.verticalCenter
        anchors.leftMargin: 15
        text:backgroundRectangle.text
        font.pointSize: Theme.sizes.text.headLine
    }
    CloseButton
    {
        anchors.right: backgroundRectangle.right
        anchors.verticalCenter: backgroundRectangle.verticalCenter
        anchors.rightMargin: 15
        parentWindow: window
    }

}
