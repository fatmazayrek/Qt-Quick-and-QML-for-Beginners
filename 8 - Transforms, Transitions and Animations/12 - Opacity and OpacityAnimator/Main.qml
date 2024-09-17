import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    color: "black"
    title: qsTr("Opacity and OpacityAnimator")

    Image {
        id: img
        source: "images/ghost.jpg"
        fillMode: Image.Stretch

        anchors.fill: parent
        opacity: 0
    }

    SequentialAnimation {
        running: true
        loops: Animation.Infinite

        OpacityAnimator {
            target:img
            from: 0
            to: 1
            duration: 2000
        }
        OpacityAnimator {
            target:img
            from: 1
            to: 0
            duration: 2000
        }
    }
}
