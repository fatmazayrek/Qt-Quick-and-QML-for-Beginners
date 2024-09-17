import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 1000
    height: 500
    visible: true
    title: qsTr("Simple Image Viewer")

    property color leftBackgroundColor: "darkgreen"

    Rectangle {
        id: leftRect

        width: 200
        height: parent.height
        color: leftBackgroundColor

        Column {
            anchors.fill: parent

            MButton {
                id: mButton1
                title.text: "Aslan"

                area.onClicked: {
                    mImage.source = "/images/aslan.jpeg"
                }
            }

            MButton {
                id: mButton2
                title.text: "Kedi"

                area.onClicked: {
                    mImage.source = "/images/cat.jpg"
                }
            }

            MButton {
                id: mButton3
                title.text: "Kaplan"

                area.onClicked: {
                    mImage.source = "/images/kaplan.jpg"
                }
            }

            MButton {
                id: mButton4
                title.text: "Zebra"

                area.onClicked: {
                    mImage.source = "/images/zebra.jpeg"
                }
            }

            MButton {
                id: mButton5
                title.text: "Zürafa"

                area.onClicked: {
                    mImage.source = "/images/zurafa.jpeg"
                }
            }
        }
    }

    Rectangle {
        id: rightSide

        width: parent.width
        height: parent.height
        color: "grey"
        clip: true
        anchors.left: leftRect.right

        Image {
            id: mImage

            source: "/images/aslan.jpeg"
            fillMode: Image.PreserveAspectFit
            anchors.fill: parent
            anchors.margins: 50
        }
    }
}
