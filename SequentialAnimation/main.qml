import QtQuick 2.9
import QtQuick.Window 2.2

Window
{
    visible: true
    width: 300
    height: 800
    title: qsTr("Sequential Animation")

    Rectangle
    {
        id: rect
        anchors.fill: parent
        Image
        {
            id: img
            source: "qrc:/google"
            smooth: true
            Text {
                anchors.horizontalCenter: img.horizontalCenter
                anchors.top: img.bottom
                text: "Click me!"
            }

            MouseArea {
                anchors.fill: img
                onClicked: anim.running = true
            }

            SequentialAnimation {
                id: anim
                NumberAnimation {
                    target: img
                    from: 20
                    to: rect.height - img.height
                    properties: "y"
                    easing.type: Easing.OutBounce
                    duration: 1000
                }
                RotationAnimation {
                    target: img
                    from: 0
                    to: 360
                    properties: "rotation"
                    direction: RotationAnimaion.Clockwise
                    duration: 1000
                }
                PauseAnimation {
                    duration: 500
                }
                NumberAnimation {
                    target: img
                    from: 300
                    to: 20
                    properties: "y"
                    easing.type: Easing.OutBack
                    duration: 1000
                }
            }
        }
    }
}
