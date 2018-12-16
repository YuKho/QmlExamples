import QtQuick 2.9
import QtQuick.Window 2.2
import "qrc:/CDs.js" as CDs

Window {
    visible: true
    width: 200
    height: 360
    title: qsTr("List View")

    Rectangle {
        id: mainrect
        color: "gray"
        width: parent.width
        height: parent.height

        Component {
            id: delegate
            Item {
                width: mainrect.width
                height: 70

                Row {
                    anchors.verticalCenter: parent.verticalCenter
                    Image {
                        width: 64
                        height: 64
                        source: modelData.cover
                    }
                    Column {
                        Text {color: "white"
                              text: modelData.artist
                              font.pointSize: 12
                             }
                        Text {color: "lightblue"
                              text: modelData.album
                              font.pointSize: 10
                             }
                        Text {color: "yellow"
                              text: modelData.year
                              font.pointSize: 8
                             }
                    }
                } // end Row
            }
        } // end Component

        ListView {
            focus: true

            header: Rectangle {
                width: parent.width
                height: 30
                gradient: Gradient {
                    GradientStop{position: 0; color: "gray"}
                    GradientStop{position: 0.7; color: "black"}
                }

                Text{
                    anchors.centerIn: parent;
                    color: "gray";
                    text: "CDs"
                    font.bold: true;
                    font.pointSize: 20
                }
            }

            footer: Rectangle {
                width: parent.width
                height: 30
                gradient: Gradient {
                    GradientStop {position: 0; color: "gray"}
                    GradientStop {position: 0.7; color: "black"}
                }
            }

            highlight: Rectangle {
                width: parent.width
                color: "darkblue"
            }

            anchors.fill: parent
            model: CDs.jsonModel
            delegate: delegate
        }
    }
}
