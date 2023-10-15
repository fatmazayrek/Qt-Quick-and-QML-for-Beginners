import QtQuick 2.15
import QtQuick.Window 2.15
import QtQuick.Layouts 1.15

Window {
    id: root
    width: grid.implicitWidth
    height: grid.implicitHeight
    visible: true
    title: qsTr("Layouts")

    GridLayout{
        id: grid

        columns: 3
        anchors.fill: parent

        Rectangle {
            height: 60
            width: 60
            color: "coral"

            Layout.fillWidth: true
        }

        Rectangle {
            height: 100
            width: 100
            color: "darkkhaki"
        }

        Rectangle {
            height: 100
            width: 100
            color: "darkgray"
        }

        Rectangle {
            height: 100
            width: 100
            color: "darkgrey"
        }

        Rectangle {
            height: 100
            width: 100
            color: "darkred"
        }

        Rectangle {
            height: 100
            width: 100
            color: "gold"
        }

        Rectangle {
            height: 100
            width: 100
            color: "khaki"
        }

        Rectangle {
            height: 100
            width: 100
            color: "lightsalmon"
        }

        Rectangle {
            height: 100
            width: 100
            color: "olivedrab"
        }
    }
}

