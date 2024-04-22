import QtQuick 2.15
import QtQuick.Controls 2.15
import "AppQmls"
ApplicationWindow  {
    id: root

    visible: true
    //visibility: "Maximized"
    visibility: "FullScreen"
    flags:  Qt.FramelessWindowHint
    MainBody
    {
        anchors.fill: parent
    }

}
