import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Signals and Slots Demo")

    property bool isRed: true
    property int increment: 20

    onIncrementChanged: {
        console.log("Increment was changed")
    }

    Rectangle {
        id: rootRect
        width: 300 + increment;
        height: 100;
        color: "red"
        anchors.centerIn: parent

        signal greet(string message)

        onGreet:
        {
            console.log("Greet signal is emitted")
        }

        function myGreeting(mMessage)
        {
            rootRect.color = mMessage
            increment += 50
        }

        Text {
            id: textID
            text: qsTr("Button")
            anchors.centerIn: parent
        }

        MouseArea {
            anchors.fill: parent
            onClicked: {
                if(isRed)
                {
                    rootRect.greet("#92E98B")
                }
                else
                {
                    rootRect.greet("red")
                }

                isRed = !isRed
            }
        }

        Component.onCompleted:
        {
            rootRect.greet.connect(rootRect.myGreeting)
        }
    }
}
