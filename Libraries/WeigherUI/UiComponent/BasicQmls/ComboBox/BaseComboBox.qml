import QtQuick
import QtQuick.Controls 2.15
import QtQuick.Layouts
import QtQml.Models

import "../Text"
import "../Utility"

//To-do: refactor the code
ComboBox
{
    id: comboBox
    width: Theme.sizes.comboBox.base.width
    height: Theme.sizes.comboBox.base.height

    model:["one","two","three","four"] // To-do: remove later

//TO-DO:
    background: Rectangle
    {
        implicitWidth: comboBox.implicitWidth
        implicitHeight: comboBox.implicitHeight
        color: "blue"
    }

    indicator: Canvas
    {
        id: canvas
        x: comboBox.width - width - comboBox.rightPadding
        y: comboBox.topPadding + (comboBox.availableHeight - height) / 2
        width: 12
        height: 8
        contextType: "2d"

        onPaint: {
            context.reset();
            context.moveTo(0, 0);
            context.lineTo(width / 2, height);
            context.lineTo(width, 0);

            context.closePath();
            context.fillStyle = "red"
            context.fill();
        }
    }

    contentItem:Item
    {
        width: comboBox.background.width - comboBox.indicator.width - 10
        height: comboBox.background.height
        RowLayout
        {
          anchors.fill: parent
          BaseText
          {
            text: comboBox.displayText
            Layout.fillWidth: true
            Layout.alignment: Qt.AlignVCenter
            Layout.leftMargin: 10
          }
        }
    }
}
