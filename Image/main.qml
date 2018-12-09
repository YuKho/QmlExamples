import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Controls 2.4

Window {
    visible: true
    width: 800
    height: 600
    title: qsTr("Image")

    Flickable {
        id: view
        width: 250
        height: 250
        contentWidth: 500
        contentHeight: 500

        Image {
            id: img
            source: "qrc:/afraid_girl"
//            source: "http://www.fakedomain.com/afraid_girl.jpg"
            x: 0; y: 0
            smooth: true

            scale: 1.2
            rotation: 30.0

            transform: [
                Scale
                {
                    origin.x: width / 2
                    origin.y: height / 2
                    xScale: 0.98
                    yScale: 0.98
                },
                Rotation
                {
                    origin.x: width / 2
                    origin.y: height / 2
                    angle: -10.0
                }]
        }

        Column {
            anchors.centerIn: parent
            visible: img.status == Image.Loading
            Text { text: qsTr("Loading...") }
            BusyIndicator {}
        }
    }
}
