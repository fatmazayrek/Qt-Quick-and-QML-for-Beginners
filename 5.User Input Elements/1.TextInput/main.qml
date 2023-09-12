import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("TextInput Element")

    Row {
        anchors.centerIn: parent
        spacing: 20

        Rectangle {
            id: firstNameRect

            width: firstName.implicitWidth + 20
            height: firstName.implicitHeight + 20
            color: "beige"

            Text {
                id: firstName
                anchors.centerIn: parent
                text: "FirstName:: "
            }
        }

        Rectangle {
            id: firstNameInputRect

            width: firstNameInput.implicitWidth + 20
            height: firstNameInput.implicitHeight + 20
            color: "green"

            TextInput {
                id: firstNameInput

                anchors.centerIn: parent
                text: "Enter your FirstName:: "
                selectByMouse: true

                onTextEdited: {
                    console.log("Text is editted:: " + text)
                }
            }
        }
    }
}
