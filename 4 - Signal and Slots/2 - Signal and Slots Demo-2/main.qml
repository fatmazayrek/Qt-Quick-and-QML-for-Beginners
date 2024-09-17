import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("EXternal Component Communication")

    Notifier {
        id: notifierID
        rectangleColor: "yellow"

        Component.onCompleted: {
            notify.connect(receiverID.receiveInfo)
        }
    }

    Receiver {
        id: receiverID
        receiverColor: "green"
        anchors.left: notifierID.right
        anchors.leftMargin: 50
        anchors.verticalCenter: notifierID.verticalCenter
    }
}
