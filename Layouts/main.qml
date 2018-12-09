import QtQuick 2.9
import QtQuick.Window 2.2
import QtQuick.Layouts 1.3

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Layouts")

    ColumnLayout {
        id: columnLayout
        spacing: 2
        anchors.fill: parent

        RowLayout {
            Layout.preferredHeight: 0.2 * columnLayout.height
            spacing: 10

            Repeater {
                model: ["red", "green", "blue"]
                Rectangle {
                    color: modelData
                    width: 64; height: 64
                    Layout.fillWidth: index != 1
                }
            }
        }

        RowLayout {
            Layout.preferredHeight: 0.2 * columnLayout.height
            anchors.margins: 10
            spacing: 10

            Repeater {
                model: ["green", "red", "blue"]
                Rectangle {
                    color: modelData
                    Layout.fillHeight: index != 1
                    Layout.fillWidth: index == 1
                    Layout.minimumWidth: 64
                    Layout.minimumHeight: 64
                }
            }
        }

        GridLayout {
            Layout.preferredHeight: 0.6 * columnLayout.height
            Layout.preferredWidth: columnLayout.width
            Layout.fillWidth: parent
            rows: 2
            columns: 2

            Repeater {
                model: ["red", "green", "blue", "yellow"]
                Rectangle {
                    color: modelData
                    Layout.minimumWidth: 64
                    Layout.minimumHeight: 64
                    Layout.fillWidth: true
                }
            }
        }
    }
}
