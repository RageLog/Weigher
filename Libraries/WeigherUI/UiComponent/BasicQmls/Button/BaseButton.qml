import QtQuick.Controls
import "../Utility"
import "../ToolTip"

Button {
    id: baseButton

    property bool toolTipVisibility: true

    width: Theme.sizes.button.base.width
    height: Theme.sizes.button.base.height

    BaseToolTip
    {
        toolTipText:"button"
        visible: toolTipVisibility & baseButton.hovered

    }

}
