import QtQuick

Window {
    id: root

    width: 640
    height: 480
    visible: true
    color: "beige"
    title: qsTr("Grouped Animations")

    property int animateDuration: 500
    property color startColor: "#331471"

    Rectangle {
        id: circle
        height: 100
        color: startColor
        width: 100
        radius: 50

        // SequentialAnimation {
        ParallelAnimation {
            id: groupAnimations

            PropertyAnimation {
                id: propertyAnimation
                target: circle
                property: "color"
                to: "#237114"
                duration: animateDuration
            }

            NumberAnimation {
                id: numberAnimation1
                target: circle
                properties: "x"
                to: root.width - circle.width
                duration: animateDuration
            }

            NumberAnimation {
                id: numberAnimation2
                easing.type: Easing.OutBounce
                easing.amplitude: 3
                target: circle
                properties: "y"
                to: root.height - circle.height
                duration: animateDuration
            }
        }
    }

    MouseArea {
        anchors.fill: parent

        onClicked: {
            circle.color = startColor
            circle.x = 0
            circle.y = 0

            groupAnimations.start()
        }
    }
}
