import QtQuick 2.15

Component {
    id: delegateId

    Rectangle {
        id: mainRect

        height: 200
        width: 300
        radius: 30

        color: "yellow"
        border.color: "gray"
        border.width: 3

        Column {
            anchors.centerIn: parent
            Text {
                id: text1
            }
            Text {
                id: text2
            }
        }
    }
}
