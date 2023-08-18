import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 700
    height: 480
    visible: true
    title: qsTr("Basic Type QML Language P1")

    property string mText: "Hello from Application"
    property int mNumber: 30

    property var aColor: Qt.rgba(0.3, 0.4, 0.5, 5)
    property var anArray: [1, 2, 3, "Four", "Five", (function(){return "six";})]


    Row {
        spacing: 20
        anchors.centerIn: parent

        Rectangle {
            id: rectID
            color: aColor
            height: 150; width: 150

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked yellow Rectangle")
                    mText = "Yellow"
                    mNumber +=10
                }
            }
        }

        Rectangle {
            id: rectID2
            color: "red"
            height: 150; width: 150

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked red Rectangle")
                    mText = "Red"
                    mNumber +=10
                }
            }
        }

        Rectangle {
            id: rectID3
            color: "blue"
            height: 150; width: 150

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked blue Rectangle")
                    mText = "Blue"
                    mNumber +=10
                }
            }
        }

        Text {
            id: textID
            text:  mText + "\n" + mNumber
        }

        Component.onCompleted: {
            console.log(mText)
            console.log(mNumber)

            for(var i=0; i<anArray.length; i++)
            {
                if(i === 5)
                {
                    console.log(anArray[i]())
                }
                else
                {
                    console.log(anArray[i])
                }
            }
        }
    }
}
