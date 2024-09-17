import QtQuick

Window {
    width: 300
    height: 450
    visible: true
    title: qsTr("Working with Transforms")

    Rectangle {
        id: root
        color: "beige"

        anchors.fill: parent

        MouseArea {
            anchors.fill: parent

            onClicked: {
                clickable1.x = 80
                clickable2.rotation = 0
                clickable3.scale = 1
            }
        }

        ClickableRectangle {
            id: clickable1
            height: 80
            width: 80
            color: "green"

            x: 80
            y: 30

            // Translation on x
            onRootClicked: {
                x += 10
            }
        }


        ClickableRectangle {
            id: clickable2
            height: 80
            width: 80
            color: "red"
            transformOrigin: Item.BottomLeft

            anchors {
                top: clickable1.bottom
                left: parent.left
                leftMargin: 80
                topMargin: 30
            }

            // Rotation
            onRootClicked: rotation += 15
        }

        ClickableRectangle {
            id: clickable3
            height: 80
            width: 80
            color: "blue"
            transformOrigin: Item.TopRight

            anchors {
                top: clickable2.bottom
                left: parent.left
                leftMargin: 80
                topMargin: 30
            }

            // Scale
            onRootClicked: scale += 0.05
        }
    }
}
