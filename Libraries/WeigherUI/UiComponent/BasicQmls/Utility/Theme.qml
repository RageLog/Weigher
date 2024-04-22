pragma Singleton
import QtQuick 2.6

    QtObject
    {
        readonly property QtObject colors:  QtObject
        {
            readonly property color background: "#282828"
            readonly property color panel: "#1f1f1f"
            readonly property color border: "#011426"
            readonly property color hover: "#506478"
            readonly property color text: "#aaaaaa"
            readonly property color press: "#1ba1e2"
        }
    }