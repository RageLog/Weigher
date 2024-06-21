import QtQuick.Controls 2.15

//To-do: refactor the code 
TextField
{
    id: textBox
    width: 200
    height: 40
    anchors.centerIn: parent
    placeholderText: "Enter text here"
    font.pointSize: 12
    color: "white"
    background: Rectangle 
                {
                color: "black"
                radius: 4
                }
}
