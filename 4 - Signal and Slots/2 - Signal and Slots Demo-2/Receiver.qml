import QtQuick 2.15

Item {
    property alias receiverColor: receiverRect.color

    height: receiverRect.height
    width: receiverRect.width

    function receiveInfo(count)
    {
        receiverRectText.text = count * 10
    }

    Rectangle {
        id: receiverRect
        height: 200; width: 200
        radius: 50
        color: "red"

        Text {
            id: receiverRectText
            text: " "
            font.pointSize: 13
            anchors.centerIn: parent
        }
    }
}
