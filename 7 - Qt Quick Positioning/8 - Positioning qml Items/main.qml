import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Positioning QML Items")

    color:  "lightyellow"

    GridLayout {
        anchors.fill: parent

        rows: 2
        columns: 2
        rowSpacing: 10
        columnSpacing: 10

        Item {
            id: item1

            Layout.fillHeight: true
            Layout.fillWidth: true

            Rectangle {
                id: item1Rect

                height: 50
                width: 50

                x: 50
                y: 50

                color: "orange"
            }
        }

        Item {
            id: item2

            Layout.fillHeight: true
            Layout.fillWidth: true

            Rectangle {
                id: item2Rect

                height: 100
                width: 100

                anchors {
                    top: parent.verticalCenter
                    left: parent.horizontalCenter
                }

                color: "darkred"
            }
        }

        Item {
            id: item3

            Layout.fillHeight: true
            Layout.fillWidth: true

            Flow {
                anchors.fill: parent

                spacing: 10

                Repeater {
                    model: 5

                    Rectangle {
                        id: item3Rect

                        height: 50
                        width: 50

                        color: "green"
                    }
                }
            }
        }

        Item {
            id: item4

            Layout.fillHeight: true
            Layout.fillWidth: true

            GridLayout {
                anchors.fill: parent

                rows: 2
                columns: 2

                rowSpacing: 20
                columnSpacing: 20

                Rectangle {
                    Layout.fillHeight: true
                    Layout.fillWidth: true

                    color: "black"
                }

                Rectangle {
                    Layout.fillHeight: true
                    Layout.fillWidth: true

                    color: "yellow"
                }

                Rectangle {
                    Layout.fillHeight: true
                    Layout.fillWidth: true

                    color: "red"
                }

            }
        }
    }
}
