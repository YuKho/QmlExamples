import QtQuick 2.8
import QtQuick.Window 2.2

Window {
    visible: true
    width: 300
    height: 300
    title: qsTr("Hello World")

    Flickable {
        id: view
        width: 250
        height: 250
        contentWidth: 500
        contentHeight: 500

        Repeater {
            model: ["red", "white", "green", "yellow", "blue"]
            Rectangle {
                color: modelData
                width:  view.contentWidth - index * 100
                height: view.contentHeight - index * 100
                x: view.contentWidth / 2 - width / 2
                y: view.contentHeight / 2 - height / 2
            }
        }
    }
}
