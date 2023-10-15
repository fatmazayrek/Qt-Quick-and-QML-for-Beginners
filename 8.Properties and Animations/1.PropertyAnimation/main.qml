import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: root

    width: 500
    height: 500
    visible: true
    title: qsTr("Properties and PropertyAnimation")

    Rectangle {
        id: animateRect

        width: 150
        height: 150
        color: "red"
        x: 0; y:0

        PropertyAnimation {
            id: movingRight

            target: animateRect
            properties: "y, x"
            to: root.height - animateRect.height
            easing.type: Easing.InOutQuad
            duration: 1000
        }

        PropertyAnimation {
            id: movingLeft

            target: animateRect
            properties: "y, x"
            to: 0
            easing.type: Easing.InOutQuad
            duration: 1000
        }

        MouseArea {
            anchors.fill: parent

            onClicked: {
                if(animateRect.x === 0)
                {
                    movingRight.start();
                }
                else
                {
                    movingLeft.start();
                }
            }
        }

    }
}
