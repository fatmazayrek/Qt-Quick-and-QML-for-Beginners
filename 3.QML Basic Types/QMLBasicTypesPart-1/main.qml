import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("QML Basic Types Demo")

    property int itemHeight: containerID.height
    property int itemWidth: containerID.width

    Item {
        id: containerID
        height: 400
        x:60
        width: height*0.5

        Rectangle {
            id: containerRect
            anchors.fill: containerID
            color: "beige"
            border.color: "black"
            anchors.topMargin: 100
        }

        Rectangle {
            id: redRect
            x: 10
            width: 50; height: 50
            color: "red"
            anchors.verticalCenter: parent.verticalCenter
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    containerID.height = containerID.height + 40
                    itemHeight = itemHeight + 40;
                }
            }
        }

        Rectangle {
            id: greenRect
            x: 70
            width: 50; height: 50
            color: "green"
            anchors.verticalCenter: parent.verticalCenter
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    containerID.height = containerID.height + 60
                    itemHeight = itemHeight + 60;
                }
            }
        }

        Rectangle {
            id: blueRect
            x: 130
            width: 50; height: 50
            color: "blue"
            anchors.verticalCenter: parent.verticalCenter
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    containerID.height = containerID.height + 80
                    itemHeight = itemHeight + 80;
                }
            }
        }

        Text {
            id: textID
            text: "Item Height and Width:: " + containerID.height + " " + containerID.width
            anchors {
                bottom: containerRect.top
                horizontalCenter: containerID.horizontalCenter
            }
            font {
                family: "Times New Roman"
                pointSize: 8
            }
        }

        Image {
            id: imageID
            source: "images/Pizza.png"
            y: 300
            anchors.horizontalCenter: textID.parent.horizontalCenter
        }
    }
}
