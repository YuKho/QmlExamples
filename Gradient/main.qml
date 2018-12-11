import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Gradient")

    Rectangle
    {
        width: parent.width
        height: parent.height

        gradient: Gradient
        {
            GradientStop { position: 0.0; color: "red" }
            GradientStop { position: 0.33; color: "yellow" }
            GradientStop { position: 1.0; color: "green" }
        }

        rotation: 30
        scale: 1.9
    }
}
