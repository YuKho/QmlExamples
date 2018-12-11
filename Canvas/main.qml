import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: 640
    height: 480
    title: qsTr("Canvas")

    Canvas
    {
        id: canvas
        width: parent.width
        height: parent.height
        onPaint:
        {
            function drawFantasy()
            {
                ctx.beginPath()
                ctx.translate(parent.width / 2, parent.height / 2)
                var fAngle = 91 * 3.14156 / 180
                for (var i = 0; i < 300; ++i) {
                    var n = i * 2
                    ctx.moveTo(0, 0)
                    ctx.lineTo(n, 0)
                    ctx.translate(n, 0)

                    ctx.rotate(fAngle)
                }
                ctx.closePath()
            }

            var ctx = getContext("2d");
            ctx.clearRect(0, 0, parent.width, parent.height)

            var gradient = ctx.createLinearGradient(canvas.width, canvas.height, 0, 0)
            gradient.addColorStop(0, "Indigo")
            gradient.addColorStop(0.5, "Bisque")
            gradient.addColorStop(1, "ForestGreen")
//            ctx.fillStyle = Qt.rgba(1, 0, 0, 1);
            ctx.fillStyle = gradient
            ctx.fillRect(0, 0, width, height);

            ctx.save();
            ctx.strokeStyle = "black"
            ctx.lineWidth = 1

            drawFantasy();

            ctx.stroke();
            ctx.restore();
        }
    }
}
