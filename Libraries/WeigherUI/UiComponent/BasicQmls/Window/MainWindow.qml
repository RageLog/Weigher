import QtQuick.Layouts
import QtQuick
import QtQuick.Controls
import "WindowComponents"
import "../Utility"

BaseWindow
{
    id: windowRoot
    property alias content: contentLoader.sourceComponent
    property string title: "Not set"
    flags:  Qt.FramelessWindowHint //| Qt.WindowStaysOnTopHint
    ColumnLayout
    {
        id: contentContainer
        spacing: 0
        anchors.fill: parent
        MainWindowHeadLine
        {
            Layout.alignment: Qt.AlignLeft
            color: Theme.colors.window.headLine
            Layout.fillWidth: true
            window:windowRoot
            text:title
        }
        Loader
        {
            id: contentLoader
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
        Component.onCompleted: 
        {
            if(content === null)
            {
                content = rect;
            }
        }
    }
    Component
    {
        id: rect
        Text
        {
            Layout.fillWidth: true
            Layout.fillHeight: true
            text: "No content set"
            color: "white"
        }
    }
}
