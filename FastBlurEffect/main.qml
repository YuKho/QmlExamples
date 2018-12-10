import QtQuick 2.9
import QtQuick.Controls 2.4
import QtGraphicalEffects 1.0
import QtQuick.Window 2.2

Window
{
    visible: true
    width: sourceImage.width
    height: sourceImage.height + sld.height
    title: qsTr("Blur Effect")

    Column
    {
        FastBlur
        {
            id: blur
            Image
            {
                id: sourceImage
                visible: false
                source: "qrc:/afraid_girl"
            }

            width: sourceImage.width
            height: sourceImage.height
            source: sourceImage
        }

        Slider
        {
            id: sld
            width: sourceImage.width
            value: 0
            from: 0
            to: 64
            stepSize: 1
            onValueChanged: { blur.radius = value }
        }
    }
}
