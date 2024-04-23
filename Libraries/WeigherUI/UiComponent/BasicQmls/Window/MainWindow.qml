import QtQuick.Layouts
import QtQuick
import QtQuick.Controls
import "WindowComponents"
import "../Utility"

BaseWindow
{
    flags:  Qt.FramelessWindowHint //| Qt.WindowStaysOnTopHint
    ColumnLayout
    {
        spacing: 0
        anchors.fill: parent
        MainWindowHeadLine
        {
            Layout.alignment: Qt.AlignLeft
            background.color: Theme.colors.window.headLine
            Layout.fillWidth: true
        }
        Item
        {
            id: contentItem
            Layout.alignment: Qt.AlignLeft
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
    }
}