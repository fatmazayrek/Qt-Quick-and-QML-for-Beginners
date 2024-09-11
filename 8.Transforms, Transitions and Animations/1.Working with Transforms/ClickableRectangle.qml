import QtQuick

Rectangle {
    id: root

    signal rootClicked()

    MouseArea {
        id: mouseArea

        anchors.fill: parent

        onClicked: {
            root.rootClicked()
        }
    }
}
