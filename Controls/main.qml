import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick.Controls 2.2

ApplicationWindow
{
    width: buttons.width
    height: buttons.height
    visible: true
    title: "Buttons"

    Column
    {
        id: buttons
        CheckBox {text: "Check Box"}
        DelayButton {text: "Delay Button"}
        RadioButton {text: "Radio Button"}
        RoundButton {text: "Round Button"}
        Switch {text: "Switch"}
        ToolButton {text: "Tool Button"}
        Button {text: "Quit"; onClicked: Qt.quit()}
    }
}
