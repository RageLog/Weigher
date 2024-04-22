    import QtQuick.Layouts
    import QtQuick 2.15

    ColumnLayout
    {
        spacing: 0
        Rectangle
        {
            Layout.alignment: Qt.AlignLeft
            Layout.preferredHeight: 40
            color: "red"
            Layout.fillWidth: true
        }
        Rectangle
        {
            Layout.alignment: Qt.AlignLeft
            color: "blue"
            Layout.fillWidth: true
            Layout.fillHeight: true

        }
    }