import QtQuick
import QtQuick.Layouts
import Qt5Compat.GraphicalEffects
import QtQuick.Controls
import QtQuick.Controls.Basic

import "../Utility"
BaseButton
{
    id: iconButton

    property url imageSource
    property bool showBorder: true
    property bool clickable: true
    property color buttonColor: Theme.colors.button.background
    property color pressColor: clickable ? Theme.colors.button.press : hoverColor
    property color hoverColor: Theme.colors.button.hover

    property int imageRotation: 0

    background: Rectangle
    {

        anchors.fill:parent

        color:buttonColor
        border.color: iconButton.pressed ? pressColor : iconButton.hovered ? hoverColor : buttonColor
        border.width: showBorder ? 1 : 0

        Image
        {
            id: icon
            smooth: true
            anchors.fill:parent
            source: imageSource
            rotation: imageRotation
        }

        ColorOverlay
        {
            anchors.fill:icon

            source:icon
            visible: icon.visible
            rotation: imageRotation
            color: iconButton.pressed ? pressColor : iconButton.hovered ? hoverColor : buttonColor
        }
    }
}
