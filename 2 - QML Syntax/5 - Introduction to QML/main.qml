import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: root
    width: 640
    height: 480
    visible: true
    title: qsTr("Introduction to Qt Quick and QML")


    MButton {
        id: button1

        rectHeight: 100
        rectWidth: 300
        rectText: "Click ME"
        rectColor: "green"
        mouseColor: "mediumaquamarine"

        anchors.verticalCenter: parent.verticalCenter
        anchors.horizontalCenter: parent.horizontalCenter

        rootMouse.onClicked: {
            console.log("Button 1")
        }

        // Sinyaller arasında bağantı sağlar. Function mutlaka on+SignalName olmak zorunda
       Connections {
           target: button1.rootMouse

           function onClicked(mouse) {
               console.log(mouse.x + " :: " + mouse.y)
           }
       }
    }

    MButton {
        id: button2

        rectHeight: 100
        rectWidth: 300
        rectText: "Close Application"
        rectColor: "orange"
        mouseColor: "peachpuff"

        anchors.top: button1.bottom
        anchors.left: button1.left
        anchors.topMargin: 30

        rootMouse.onClicked: {
            console.log("Button 1")
            Qt.quit()
        }
    }
}
