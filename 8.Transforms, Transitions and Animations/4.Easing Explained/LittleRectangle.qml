import QtQuick

Item {
    id: root

    property var backgorundColor
    property var startColor
    property var endColor
    property string easingText
    property int animateDuration
    property var easingType
    property int containerWidth

    // we should write height and width
    height: container.height
    width: container.width

    Rectangle {
        id: container
        width: containerWidth
        color: backgorundColor
        height: 50

        Text {
            text: easingText
            anchors.centerIn: parent
        }

        Rectangle {
            id: littleRect
            height: 50
            width: 50
            color: startColor
            radius: 10
            border {
                width: 3
                color: "black"
            }

            property int lastX: container.width - width

            MouseArea {
                anchors.fill: parent

                property bool toRight: true
                onClicked: {
                    if (toRight) {
                        // move right
                        numberAnimation1.to = littleRect.lastX;
                        numberAnimation1.start()

                        // change color
                        colorAnimation1.from = startColor
                        colorAnimation1.to = endColor
                        colorAnimation1.start()

                    } else {
                        // move left
                        numberAnimation1.to = 0;
                        numberAnimation1.start()

                        // change color
                        colorAnimation1.from = endColor
                        colorAnimation1.to = startColor
                        colorAnimation1.start()
                    }
                    toRight = !toRight
                }
            }

            // we should fill "property"
            NumberAnimation {
                id: numberAnimation1
                target: littleRect
                property: "x"
                to: littleRect.lastX
                easing.type: easingType
                duration: animateDuration
            }

            // we should fill "property"
            ColorAnimation {
                id: colorAnimation1
                target: littleRect
                property: "color"
                from: startColor
                to: endColor
                easing.type: easingType
                duration: animateDuration
            }
        } //littleRect
    } //container
} //root
