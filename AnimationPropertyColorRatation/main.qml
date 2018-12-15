import QtQuick 2.9
import QtQuick.Window 2.2

Window
{
    color: "lightblue"
    visible: true
    width: 800
    height: 800
    title: qsTr("Animation")

    ColorAnimation on color
    {
        from: Qt.rgba(1, 0.5, 0, 1)
        to: Qt.rgba(0.5, 0, 1, 1)
        duration: 4000
        running: true
        easing.type: Easing.OutExpo
        loops: Animation.Infinite
    }

    Image
    {
        id: img
        source: "qrc:/google"
        smooth: true
        width: 100; height: 100
        x: 0; y: 0

        NumberAnimation on width
        {
            from: 100
            to: 200
            duration: 4000
            easing.type: Easing.OutCubic
            loops: Animation.Infinite
        }

        RotationAnimation on rotation {
            from: 0
            to: 360
            duration: 8000
            easing.type: Easing.OutExpo
            loops: Animation.Infinite
        }
    }

    PropertyAnimation
    {
        target: img
        properties: "x,y"
        from: 0
        to: 800 - img.width
        duration: 4000
        running: true
        easing.type: Easing.OutExpo
        loops: Animation.Infinite
    }
}
