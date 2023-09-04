import QtQuick 2.15

Item {
    property alias rectangleColor: notifierRect.color

    id: itemID
    height: notifierRect.height
    width: notifierRect.width

    anchors.centerIn: parent

    property int count: 0

    signal notify(string count)

    Rectangle {
        id: notifierRect
        width: 200; height: 200
        radius: 50
        color: "red"

        Text {
            id: buttonText
            anchors.centerIn: parent
            font.pointSize: 15
            text: count
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                if(count == 10)
                {
                    count = 0
                }
                else
                {
                    count++
                }

                notify(count)
            }
        }
    }
}
