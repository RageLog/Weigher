import QtQuick
import QtQuick.Layouts
import QtQuick.Controls 2.15

import "../Utility"
BaseButton
{
    id: iconButton

    property url imageSource
    property bool showBorder: true
    property bool clickable: true
    property color buttonColor: Theme.colors.button.base
    property color pressColor: clickable ? Theme.colors.button.press : hoverColor
    property color hoverColor: Theme.colors.button.hover
    property color backgroundColor: Theme.colors.button.background
    property color radius: Theme.sizes.button.base.radius

    property int imageRotation: 0

    icon.source: imageSource
    icon.color: buttonColor
    icon.width: parent.width
    icon.height: parent.height

    display:AbstractButton.IconOnly
    flat:true
    highlighted:false
    down: false

    onHoveredChanged:
    {
        iconButton.icon.color = (iconButton.hovered)? hoverColor : buttonColor
    }
    onPressed:
    {
        iconButton.icon.color = pressColor
    }
    onReleased:
    {
        iconButton.icon.color = (iconButton.hovered)? hoverColor : buttonColor
    }

    background: Rectangle
    {
        anchors.fill:parent

        color:backgroundColor
        visible:  iconButton.hovered | iconButton.pressed
        border.color: iconButton.pressed ? pressColor : hoverColor
        border.width: showBorder ? 1 : 0
        radius:iconButton.radius
    }
}
