import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    id: mainWindow

    visible: true
    width: 640
    height: 480
    title: qsTr("Header Footer and Highlight Demo")

    ListView {
        id : mListViewId

        anchors.fill: parent

        header: headerId

        footer : Rectangle{
            width: parent.width
            height: 50
            color: "dodgerblue"
        }

        highlight: Rectangle{
            width: parent.width
            height: 50
            color: "red"
            radius: 14
            border.color: "yellowgreen"
            z : 2
            y: mListViewId.currentItem.y
            opacity: 0.3

            Behavior on y{
                NumberAnimation { duration: 1000; easing.type: Easing.OutQuint}
            }
        }

        model : ["January","February","March","April","May","June","July","Aug","Sept","Oct","Nov","Dec"]

        delegate: Rectangle {
            id : rectangleId

            width: parent.width
            height: 50

            color: "beige"
            border.color: "yellowgreen"
            radius: 10

            Text {
                id : textId

                anchors.centerIn: parent

                font.pointSize: 20
                text : modelData
            }

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    console.log("Clicked on :"+ modelData)
                    mListViewId.currentIndex = index
                }
            }
        }
    }

    Component {
        id : headerId
        Rectangle {
            id : headerRectId
            width: parent.width
            height: 50
            color: "yellowgreen"
            border {color: "#9EDDF2"; width: 2}

            Text {
                anchors.centerIn: parent
                text : "Months"
                font.pointSize: 20
            }

        }
    }
}
