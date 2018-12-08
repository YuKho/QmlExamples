import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Anchors")

    Rectangle {
        id: redRect
        color: "red"
        width: parent.width / 1.5
        height: parent.height / 1.5
        anchors.top: parent.top
        anchors.left: parent.left
    }

    Rectangle {
        id: greenRect
        color: "green"
        opacity: 0.5
        anchors.top: redRect.verticalCenter
        anchors.bottom: parent.bottom
        anchors.left: redRect.horizontalCenter
        anchors.right: parent.right
    }

    Rectangle {
        color: "lightgreen"
        anchors.fill: centerText
    }

    Text {
        id: centerText
        text: qsTr("centerIn")
        anchors.centerIn: parent
    }

    Text {
        text: qsTr("topHorizontalCenter")
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Text {
        text: qsTr("bottomHorizontalCenter")
        anchors.bottom: parent.bottom
        anchors.horizontalCenter: parent.horizontalCenter
    }

    Text {
        text: qsTr("leftVerticalCenter")
        anchors.left: parent.left
        anchors.verticalCenter: parent.verticalCenter
    }

    Text {
        text: qsTr("rightVerticalCenter")
        anchors.right: parent.right
        anchors.verticalCenter: parent.verticalCenter
    }
}
