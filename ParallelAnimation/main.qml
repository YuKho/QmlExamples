import QtQuick 2.9
import QtQuick.Window 2.2

Window
{
    visible: true
    width: 640
    height: 480
    title: qsTr("Parallel Animation")

    Rectangle
    {
        id: rect
        anchors.fill: parent
        Image {
            id: img
            source: "qrc:/google"
            smooth: true
            anchors.centerIn: parent
        }

        ParallelAnimation
        {
            NumberAnimation {
                target: img
                properties: "scale"
                from: 0.1;
                to: 3.0;
                duration: 2000
                easing.type: Easing.InOutCubic
            }
            NumberAnimation {
                target: img
                properties: "opacity"
                from: 1.0
                to: 0;
                duration: 2000
            }
            running: true
            loops: Animation.Infinite
        }
    }
}
