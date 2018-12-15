import QtQuick 2.9
import QtQuick.Window 2.2

Window
{
    visible: true
    width: 640
    height: 480
    title: qsTr("Behavior Animation")

    Rectangle
    {
        id: rect
        anchors.fill: parent

        Image
        {
            id: img
            source: "qrc:/google"
            x: 10; y: 10
            width: 100; height: 100
            smooth: true
            Text {
                anchors.horizontalCenter: img.horizontalCenter
                anchors.top: img.bottom
                text: "Move the mouse!"
            }

            Behavior on x {
                NumberAnimation {
                    duration: 1000
                    easing.type: Easing.OutBounce
                }
            }
            Behavior on y {
                NumberAnimation {
                    duration: 1000
                    easing.type: Easing.OutBounce
                }
            }
        }

        MouseArea
        {
            anchors.fill: rect
            hoverEnabled: true
            onMouseXChanged: img.x = mouseX
            onMouseYChanged: img.y = mouseY
        }
    }
}
