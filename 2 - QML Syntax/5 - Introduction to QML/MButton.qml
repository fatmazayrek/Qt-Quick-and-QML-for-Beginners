import QtQuick 2.15
import QtQml 2.15

Item {
    id: rootItem

    height: buttonRect.height
    width: buttonRect.width

    property int rectHeight
    property int rectWidth
    property color rectColor
    property string rectText
    property string mouseColor
    property alias rootMouse: mouseArea     // property'ler arasında bağlantıları sağlamakta, buraya MouseArea yazarsan null dönecekti.

    Rectangle {
        id: buttonRect

        height: rectHeight
        width: rectWidth
        color: rectColor

        Text {
            id: buttontText

            text: rectText

            anchors.centerIn: parent
        }

        MouseArea {
            id: mouseArea

            anchors.fill: parent
            hoverEnabled: true

            onHoveredChanged: {
                if(containsMouse)
                {
                    buttonRect.color = mouseColor
                }
                else
                {
                    buttonRect.color = rectColor
                }
            }
        }
    }
}
