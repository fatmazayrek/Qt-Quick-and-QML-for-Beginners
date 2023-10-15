import QtQuick 2.15

Item {
    id: root

    property color buttonColor: "darkgreen"
    property color textColor: "white"
    property color hooverTextColor: "black"
    property color hooverButtonColor: "lightgoldenrodyellow"
    property alias title: rectText
    property alias area: mouseArea

    height: 90
    width: 200

    Rectangle {
        id: mainRect

        color: buttonColor
        clip: true
        border.color: "grey"
        anchors.fill: parent

        Text {
            id: rectText

            text: ""
            font.bold: true
            font.pointSize: 12
            color: textColor
            anchors.centerIn: parent
        }

        MouseArea {
            id: mouseArea

            anchors.fill: parent
            hoverEnabled: true

            onEntered: {
                mainRect.color = hooverButtonColor
                rectText.color = hooverTextColor
            }

            onExited: {
                mainRect.color = buttonColor
                rectText.color = textColor
            }
        }
    }
}
