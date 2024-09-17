import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Properties and Handlers")

    property bool numbers: false

    onNumbersChanged:
    {
        numbers ? rectID.color = "red" : rectID.color = "yellow"
    }

    Rectangle {
        id: rectID
        color: "yellow"
        anchors.centerIn: parent
        width: 100; height: 100

        MouseArea {
            anchors.fill: parent

            onClicked: {
                numbers = !numbers
            }
        }
    }
}
