import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Custom Signals")

    Rectangle
    {
        width: parent.width
        height: parent.height

        signal mousePositionChanged(real x, real y)

        onMousePositionChanged:
            txt.text = "<h1>X:" + x + "; Y:" + y + "</h1>"

        Text
        {
            id: txt
            text: "<h1>Move the Mouse</h1>"
            anchors.centerIn: parent
        }

        MouseArea
        {
            anchors.fill: parent
            hoverEnabled: true
            onMouseXChanged: parent.mousePositionChanged(mouseX, mouseY)
            onMouseYChanged: parent.mousePositionChanged(mouseX, mouseY)
        }
    }
}
