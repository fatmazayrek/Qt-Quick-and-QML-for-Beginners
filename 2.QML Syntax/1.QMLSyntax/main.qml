import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Syntax Overview")

    property string showText: ":: Hello :: "

    Row {
        id: row1
        spacing: 20
        anchors.centerIn: parent

        Rectangle {
            id: redRect
            color: "red"
            height: 150; width: 150
            radius: 20

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked the red button")
                    showText = "Hello From red"
                }
            }
        }

        Rectangle {
            id: blueRect
            color: "blue"
            height: 150; width: 150
            radius: 20

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked the blue button")
                    showText = "Hello From blue"
                }
            }
        }

        Rectangle {
            id: yellowRect
            color: "yellow"
            height: 150; width: 150
            radius: 20

            MouseArea {
                anchors.fill: yellowRect
                onClicked: {
                    console.log("Clicked the yellow button")
                    showText = "Hello From yellow"
                }
            }
        }

        Rectangle {
            id: grayRect
            color: "#DCDCDC"
            height: 150; width: 150
            radius: 45

            Text {
                id : textID
                text: showText
                color: "red"
                anchors.centerIn: grayRect
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked the gray button")
                    textID.text = "Hello From gray"
                }
            }
        }
    }
}
