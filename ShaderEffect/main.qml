import QtQuick 2.9
import QtQuick.Window 2.2

Window {
    visible: true
    width: sourceImage.width
    height: sourceImage.height
    title: qsTr("ShaderEffect")

    Rectangle
    {
        width: parent.width; height: parent.height
        Row
        {
            Image
            {
                id: sourceImage;
//                sourceSize { width: 400; height: 400 }
                source: "qrc:/afraid_girl"
                visible: false
            }
            ShaderEffect
            {
                width: sourceImage.width; height: sourceImage.height
                property variant src: sourceImage
                vertexShader: "
                    uniform highp mat4 qt_Matrix;
                    attribute highp vec4 qt_Vertex;
                    attribute highp vec2 qt_MultiTexCoord0;
                    varying highp vec2 coord;
                    void main() {
                        coord = qt_MultiTexCoord0;
                        gl_Position = qt_Matrix * qt_Vertex;
                    }"
                fragmentShader: "
                    varying highp vec2 coord;
                    uniform sampler2D src;
                    uniform lowp float qt_Opacity;
                    void main() {
                        lowp vec4 tex = texture2D(src, coord);
                        gl_FragColor = vec4(vec3(dot(tex.rgb,
                                            vec3(0.344, 0.5, 0.156))),
                                                 tex.a) * qt_Opacity;
                    }"
            }
        }
    }
}
