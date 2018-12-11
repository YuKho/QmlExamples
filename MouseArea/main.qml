import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("MouseArea")

    Rectangle
    {
        width: parent.width
        height: parent.height
//        color:  mouseArea.containsMouse ? "yellow" : "lightgreen"
        Text {
            anchors.centerIn: parent
            text: "<h1><center>Click Me!<br>
                   (use left or right mouse button)</center></h1>"
        }

        MouseArea
        {
            id: mouseArea
            anchors.fill: parent
            acceptedButtons: Qt.LeftButton | Qt.RightButton
            onPressed:
            {
                if (mouse.button === Qt.RightButton) {
                    parent.color = "red"
                }
                else {
                    parent.color = "blue"
                }
            }
            onReleased: parent.color = "lightgreen"
            hoverEnabled: true

            onEntered: parent.color = "red"
            onExited: parent.color = "blue"
        }
    }
}
