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
    width: 200
    height: 40

    model:["one","two","three","four"] // To-do: remove later

//TO-DO:
    background: Rectangle
    {
        implicitWidth: comboBox.implicitWidth
        implicitHeight: comboBox.implicitHeight
        color: "transparent"
        border.width: comboBox.activeFocus ? 2 : 0.6 // To-do: think about it
    }

    indicator: Canvas
    {
        id: canvas
        x: comboBox.width - width - comboBox.rightPadding
        y: comboBox.topPadding + (comboBox.availableHeight - height) / 2
        width: 12
        height: 8
        contextType: "2d"

        Connections {
            target: comboBox
            function onPressedChanged() { canvas.requestPaint(); }
        }

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
            Layout.leftMargin: 10 //TO-DO:theme
            //color: "Theme."  //TO-DO: property and theme
          }
        }
    }

    //delegate: ItemDelegate
    //{
    //    background: Rectangle
    //    {
    //        anchors.fill: parent
    //        radius: 8
    //        color:  "red"
    //    }
    //}

    //popup: Popup{
    //        y:comboBox.height + 2
    //        width: comboBox.implicitWidth * 1.26
    //        implicitHeight: contentItem.implicitHeight > 250 ? 250 : contentItem.implicitHeight
    //        padding: 4
    //        contentItem: ListView{
    //            leftMargin: 5
    //            implicitHeight: contentHeight
    //            keyNavigationEnabled: true
    //            model:comboBox.popup.visible ? comboBox.delegateModel : null
    //            clip: true
    //            focus: true
    //            currentIndex: comboBox.highlightedIndex
    //        }

    //        background: Rectangle{
    //            anchors.fill: parent
    //            color: "yellow"
    //            radius: 6
    //            border.width: 0.6
    //            clip: true
    //        }
    //    }
}
