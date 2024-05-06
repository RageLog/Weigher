import QtQuick.Controls
import "../Utility"
import "../ToolTip"

Button {
    id: baseButton

    property bool toolTipVisibility: true
    property string toolTipText: "button"

    width: Theme.sizes.button.base.width
    height: Theme.sizes.button.base.height

    BaseToolTip
    {
        toolTipText:baseButton.toolTipText
        visible: toolTipVisibility & baseButton.hovered
    }

}
