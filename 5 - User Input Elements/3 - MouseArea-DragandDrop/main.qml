import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: myWindow
    width: 640
    height: 480
    visible: true
    title: qsTr("Mouse Area, Drag and Drop")

    Rectangle {
        id: topRect

        width: 500; height: 100
        radius: 100
        color: "deeppink"

        Rectangle {
            id: blueRect

            width: 100; height: 100
            radius: 20
            color: "blue"
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                if(mouse.button == Qt.LeftButton)
                    console.log("Left button is clicked")

                blueRect.x = mouse.x
            }

            onWheel:
            {
                console.log(wheel.x + ":: " + wheel.y + ":: " + wheel.angleDelta)
            }

            hoverEnabled: true
            onHoveredChanged: {
                if(containsMouse)
                {
                    blueRect.color = "green"
                }
                else
                {
                    blueRect.color = "blue"
                }
            }
        }
    }

    Rectangle {
        id: bottomRect

        width: 500; height: 100
        radius: 100
        y: 300
        color: "deeppink"

        Rectangle {
            id: dragRect

            width: 100; height: 100
            radius: 20
            color: "blue"
        }

        MouseArea {
            anchors.fill: parent
            drag.target: dragRect
            drag.axis: Drag.XAndYAxis
            drag.minimumY: -myWindow.height + dragRect.height
            drag.maximumY: myWindow.height - dragRect.height
            drag.minimumX: 0
            drag.maximumX: bottomRect.width - dragRect.width
        }
    }
}
