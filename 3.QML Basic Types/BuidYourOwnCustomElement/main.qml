import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Buid Your Own Custom Elements")

    MButton {
        id: mButton1
        x: 10
        buttonName: "Button 1"
        mcolor: "red"

        onButtonClicked: {
            console.log("Button 1 is Clicked")
        }
    }

    MButton {
        id: mButton2
        x: mButton1.width + 40
        mcolor: "yellow"
        buttonName: "Button 2"

        onButtonClicked: {
            console.log("Button 2 is Clicked")
        }
    }

    Text {
        id: mText
        text: qsTr("Button 1:: " + mButton1.myCount + "\n" + "Button 2:: " + mButton2.myCount)
        anchors {
            horizontalCenter: parent.horizontalCenter
            verticalCenter: parent.verticalCenter
        }
    }
}
