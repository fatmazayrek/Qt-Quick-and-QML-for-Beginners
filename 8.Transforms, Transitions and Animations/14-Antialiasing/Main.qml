import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Anti-aliasing")

    Row {
        anchors.centerIn: parent
        spacing: 20

        Rectangle {
            width: 200; height: 200
            radius: width
            border {
                color: "darkgoldenrod"
                width: 20
            }

            Text {
                anchors.centerIn: parent
                text: qsTr("Turned On")
            }
        }

        Rectangle {
            width: 200; height: 200
            radius: width
            antialiasing: false
            border {
                color: "darkgoldenrod"
                width: 20
            }

            Text {
                anchors.centerIn: parent
                text: qsTr("Turned Off")
            }
        }
    }
}
