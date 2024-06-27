import QtQuick.Layouts
import QtQuick 2.15
import "../BasicQmls/Utility"
import "../BasicQmls/ComboBox"

ColumnLayout
{
    spacing: 0

    Rectangle
    {
        Layout.alignment: Qt.AlignLeft
        color: Theme.colors.window.background
        Layout.fillWidth: true
        Layout.fillHeight: true
        BaseComboBox
        {
            id:test
        }
    }
}
