import QtQuick 2.8
import QtQuick.Window 2.2
import QtQuick.Controls 2.2

ApplicationWindow
{
    width: 150
    height: 500
    visible: true
    title: "Controls"

    header: ToolBar { Button { text: "Quit"; onClicked: Qt.quit() } }
    footer: ToolBar { id: statusBar; Label { id: label } }

    Column
    {
        id: buttons
        width: parent.width
        CheckBox {text: "Check Box"}
        DelayButton {text: "Delay Button"}
        RadioButton {text: "Radio Button"}
        RoundButton {text: "Round Button"}
        Switch {text: "Switch"}
        ToolButton {text: "Tool Button"}
        SpinBox { value: 5 }

        ProgressBar
        {
            id: progressBar
            width: parent.width
            height: 20
            value: slider.value
        }

        Dial
        {
            id: slider
            width: parent.width
            height: 100
            value: 0.75
            stepSize: 0.1
            onValueChanged: label.text = slider.value
        }

    }
}
