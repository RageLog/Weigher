import QtQuick
import QtQuick.Controls
import QtQuick.Layouts
import "../Text"

ToolTip
{
    id:root
    property string toolTipText: "value"
    BaseText
    {
        id:tx
        text:root.toolTipText
        font.bold: true
    }
    background: Rectangle
    {
        color:"white"
        radius:5
        Layout.fillWidth: true
        Layout.fillHeight: true
        opacity:0.90
    }
}
