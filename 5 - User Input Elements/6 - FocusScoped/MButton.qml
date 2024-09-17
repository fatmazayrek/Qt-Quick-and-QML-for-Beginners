import QtQuick 2.15

FocusScope {
    id: mainScope

    height: buttonRect.height
    width: buttonRect.width

    property alias buttonColor: buttonRect.color

    Rectangle {
        id: buttonRect

        width: 400
        height: 100
        color: "red"
        focus: true

        Text {
            id: buttonText

            text: "Default"
            anchors.centerIn: buttonRect
        }

        Keys.onPressed: {
            if(event.key === Qt.Key_1)
            {
                buttonText.text = "Key 1 pressed"
            }
            else if(event.key === Qt.Key_3)
            {
                buttonText.text = "Key 3 pressed"
            }
            else
            {
                buttonText.text = "Pressed another key " + event.key
            }
        }
    }
}
