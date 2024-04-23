pragma Singleton
import QtQuick 2.6

    QtObject
    {
        readonly property QtObject colors:  QtObject
        {
            readonly property QtObject window: QtObject
            {
                readonly property color background: "#1f1f1f"
                readonly property color border: "#011426"
                readonly property color headLine: "#282828"

            }
            readonly property color panel: "#282828"
            readonly property color hover: "#506478"
            readonly property color text: "#aaaaaa"
            readonly property color press: "#1ba1e2"
        }
        readonly property QtObject sizes: QtObject
        {
            readonly property QtObject button: QtObject
            {
                readonly property QtObject base: QtObject
                {
                    readonly property int width: 32
                    readonly property int height: 32     
                }
            }
        }
    }
