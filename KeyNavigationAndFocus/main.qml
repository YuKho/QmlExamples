import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Key Navigation and Focus")

    Rectangle
    {
        width: parent.width
        height: parent.height
        color:  focus ? "red" : "lightgreen"
        KeyNavigation.tab: childrect

        Rectangle
        {
            id: childrect
            width: parent.width / 2
            height: parent.height / 2
            anchors.centerIn: parent
            color:  focus ? "red" : "lightgreen"

            KeyNavigation.tab: parent
            Keys.onLeftPressed: width -= 3
            Keys.onRightPressed: width += 3
            focus: true

            Text {
                id: txt
                anchors.centerIn: parent
                text: "<H2>Press TAB</H2><br>(press cursor-left or cursor-right key to change width)"
            }

            onFocusChanged:
            {
                txt.text = "Press TAB"
                txt.text += focus ? "<br>(press '<' or '>' for change width)" : ""
            }
        }
    }

}
