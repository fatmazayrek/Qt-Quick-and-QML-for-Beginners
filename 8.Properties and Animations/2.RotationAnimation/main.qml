import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Rotation Animation")

    Rectangle {
        id: mainRect

        height: 150; width: 150
        color: "red"
        anchors.centerIn: parent

        Text {
            id: rectText

            text: Math.round(mainRect.rotation)
            anchors.centerIn: parent
        }

        SequentialAnimation {
            id: totalAnimation

            RotationAnimation {
                id: animation

                target: mainRect
                direction: RotationAnimation.Clockwise
                from: 0
                to: 360
                duration: 4000
            }

            RotationAnimation {
                id: animation2

                target: mainRect
                direction: RotationAnimation.Counterclockwise
                from: 360
                to: 0
                duration: 4000
            }
        }

        MouseArea {
            anchors.fill: parent

            onClicked: {
                if(!totalAnimation.running){
                    totalAnimation.start()
                }
                else
                {
                    if(totalAnimation.paused)
                    {
                        totalAnimation.resume()
                    }
                    else {
                        totalAnimation.pause()
                    }
                }
            }
        }
    }
}
