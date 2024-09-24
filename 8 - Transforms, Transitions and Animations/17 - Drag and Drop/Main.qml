import QtQuick

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Drag and Drop")

    property string key: "ball"
    property color goal: "green"
    property color notGoal: "red"
    property color ballBefore: "yellow"
    property color ballAfter: "orange"

    DropArea {
        id: dropArea
        width: 300
        Drag.keys: [root.key]    // DropArea'nin kabul edecegi ozel key'ler girilir
        anchors {
            top: parent.top
            right: parent.right
            bottom: parent.bottom
        }

        onDropped: {
            file.color = root.goal
        }

        Rectangle {
            id: file
            color: root.notGoal
            border {
                color: "black"
                width: 5
            }
            anchors.fill: parent
        }
    }

    Rectangle {
        id: ball
        height: 100
        width: 100
        radius: width
        x: 20
        y: (parent.height / 2) - (height / 2)
        color: root.ballBefore
        border {
            color: "black"
            width: 5
        }

        Drag.active: dragArea.drag.active
        Drag.keys: [root.key]

        MouseArea {
            id: dragArea
            anchors.fill: parent
            drag.target: ball
            onPressed: {
                ball.color = ballAfter
                file.color = notGoal
            }
            onReleased: {
                ball.color = ballBefore
                ball.Drag.drop()            // Drop sinyali gonderilir
            }
        }
    }
}
