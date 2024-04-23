    import QtQuick.Layouts
    import QtQuick 2.15
    import "../BasicQmls/Utility"

    ColumnLayout
    {
        spacing: 0
        Rectangle
        {
            Layout.alignment: Qt.AlignLeft
            Layout.preferredHeight: 40
            color: Theme.colors.window.headLine
            Layout.fillWidth: true
        }
        Rectangle
        {
            Layout.alignment: Qt.AlignLeft
            color: Theme.colors.window.background
            Layout.fillWidth: true
            Layout.fillHeight: true
        }
    }