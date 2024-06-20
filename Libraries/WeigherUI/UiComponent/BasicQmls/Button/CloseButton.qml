import QtQuick

IconButton
{
    id: iconButton
    property Window parentWindow: null
    toolTipText:"Close"
    onClicked: parentWindow.close()
    imageSource: "qrc:/UiComponent/Icons/icon_close.svg"
}
