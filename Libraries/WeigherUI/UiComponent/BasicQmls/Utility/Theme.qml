pragma Singleton
import QtQuick

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
            readonly property QtObject text: QtObject
            {
                readonly property color base: "#babcc1"
            }
            readonly property QtObject button: QtObject
            {
                readonly property color base: "#babcc1"
                readonly property color background: "transparent"
                readonly property color border: "#000000"//TODO:: Currently not in use
                readonly property color hover: "#506478"
                readonly property color press: "#1ba1e2"
            }
        }

        readonly property QtObject sizes: QtObject
        {
            readonly property QtObject button: QtObject
            {
                readonly property QtObject base: QtObject
                {
                    readonly property int width: 32
                    readonly property int height: 32
                    readonly property int radius: 7
                }
            }
            readonly property QtObject text: QtObject
            {
                readonly property int base: 18
                readonly property int headLine: 20
            }
        }

        readonly property QtObject fonts:  QtObject
        {
            readonly property FontLoader montserrat_regular: FontLoader
            {
                source: "../Fonts/Montserrat-Regular.ttf"
            }

        }
    }
