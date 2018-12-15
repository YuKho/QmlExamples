import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 250
    height: 150
    title: qsTr("States")

    Rectangle
    {
        id: rect
        width: 250
        height: 150

        state: "State2"
        Text {
            id: txt
            anchors.centerIn: parent
        }

        states: [
            State {
                name: "State1"
                PropertyChanges {
                    target: rect
                    color: "lightgreen"
                    width: 150
                    height: 60
                }
                PropertyChanges {
                    target: txt
                    text: "State2: Click Me!"
                }
            },
            State {
                name: "State2"
                PropertyChanges {
                    target: rect
                    color: "yellow"
                    width: 200
                    height: 120
                }
                PropertyChanges {
                    target: txt
                    text: "State1: Click Me!"
                }
            }
        ]

        transitions: [
                Transition {
                    from: "State1"; to: "State2"
                    PropertyAnimation {
                        target: rect;
                        properties: "width,height";
                        easing.type: Easing.InCirc
                        duration: 1000
                    }
                },
                Transition {
                    from: "State2"; to: "State1"
                    PropertyAnimation {
                        target: rect
                        properties: "width,height";
                        easing.type: Easing.InBounce
                        duration: 1000
                    }
                }

            /*  //template transition code
            ,Transition {
                from: "*"; to: "*"
                PropertyAnimation {
                    target: rect
                    properties: "width,height";
                    easing.type: Easing.InBounce
                    duration: 1000
                }
            }
            */
            ]

        MouseArea
        {
            anchors.fill: parent
            onClicked:
                parent.state = (parent.state == "State1") ? "State2" : "State1"
        }
    }
}
