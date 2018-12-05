import QtQuick 2.7
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Hello World")
    onWidthChanged: console.log(qsTr("Width:") + width)

    Item {
        id: myElement

        property string name: "My element name"
        property int ver: 1
        property real pi: 3.14
        property bool condition: true
        property var variant: 42.8
        property url link: "http://www.bhv.com/"

        onConditionChanged: console.log("condition changed")
    }

    Rectangle {
        id: orangeRect
        color: "darkorange"
        x: 0
        y: 0
        width: parent.width / 2
        height: parent.height / 2

        border.color: "dimgray"
        border.width: 4
        radius: 20
        smooth: true

        Text {
            id: textArea
            x: 5
            y: 10
            text: myElement.name + "<br>" + myElement.link
        }
    }

    Rectangle {
        id: greenRect
        color: "green"

        QtObject {
            id: priv
            readonly property int nX: orangeRect.width
            readonly property int nY: orangeRect.height
        }

        x: priv.nX
        y: priv.nY
        width: orangeRect.width
        height: orangeRect.height

        border.color: "dimgray"
        border.width: 4
        radius: 20
        smooth: true
    }
}
