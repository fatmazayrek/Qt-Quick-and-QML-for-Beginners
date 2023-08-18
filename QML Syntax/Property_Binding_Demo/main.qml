import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Property Binding")

    Rectangle {
        id: topRect
        width: 100
        height: width * 1.5
        color: "red"
    }

    Rectangle {
        id: leftBottomRect
        width: 50; height: width
        color: "yellow"
        anchors.bottom: parent.bottom

        MouseArea {
            anchors.fill: parent
            onClicked: {
                topRect.width = topRect.width * 1.6

                console.log("Height :: " + topRect.height + "\n" + "Width :: " + topRect.width)
            }
        }
    }

    Rectangle {
        id: rightBottomRect
        width: 50; height: width
        color: "green"
        anchors.bottom: parent.bottom
        anchors.right: parent.right

        MouseArea {
            anchors.fill: parent
            onClicked: {
                topRect.height = Qt.binding(function()
                {
                    return topRect.width * 2
                })

                console.log("Height :: " + topRect.height + "\n" + "Width :: " + topRect.width)
            }
        }
    }

}
