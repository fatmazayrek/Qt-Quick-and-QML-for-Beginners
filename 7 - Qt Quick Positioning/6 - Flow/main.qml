import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 900
    height: 600
    visible: true
    title: qsTr("Flow Layout")

    property int number: 0

    Rectangle {
            id: mainRect
            width: parent.width
            height: parent.height
            color: "lightblue"

            clip: true

            Flow {
                id: flowLayout
                anchors.fill: parent
                spacing: 10
                flow: Flow.LeftToRight // Set the flow direction as per your requirements

                Rectangle {
                    width: 100
                    height: 100
                    color: "red"

                    MouseArea {
                        anchors.fill: parent

                        drag.target: parent
                        drag.axis: Drag.XAndYAxis
                    }
                }

                Rectangle {
                    width: 100
                    height: 100
                    color: "green"

                    MouseArea {
                        anchors.fill: parent

                        drag.target: parent
                        drag.axis: Drag.XAndYAxis
                    }
                }

                Rectangle {
                    width: 100
                    height: 100
                    color: "blue"

                    MouseArea {
                        anchors.fill: parent

                        drag.target: parent
                        drag.axis: Drag.XAndYAxis
                    }
                }
            }
        }
}
