import QtQuick 2.15
import QtQuick.Window 2.15

import "MyJSFile1.js" as JS1

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Functions and Scopes")

    Rectangle {
        id: mainRect

        color: "red"
        width: 300
        height: 100
        anchors.centerIn: parent

        MouseArea {
            anchors.fill: parent

            onClicked: {
                JS1.greeting()

                console.log("These ages: " + JS1.addAges(30, 80))
            }
        }
    }
}
