import QtQuick.Controls 2.15

//To-do: refactor the code 
CheckBox {
    id: checkBox
    text: "Check me!"
    anchors.centerIn: parent

    onCheckedChanged: {
    console.log("Checked:", checkBox.checked)
    }
}