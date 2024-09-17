import QtQuick 2.15

Item {
    id: root

    property alias buttonName: buttonText.text
    property int myCount: 0
    property string mcolor: ""
    signal buttonClicked

    width: rootRect.width
    height: rootRect.height

    Rectangle {
        id: rootRect
        width: buttonText.implicitWidth + 50
        height: buttonText.implicitWidth + 10
        color: mcolor

        Text {
            id: buttonText
            text: "Button"
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                myCount++
                root.buttonClicked()
            }
        }
    }
}
