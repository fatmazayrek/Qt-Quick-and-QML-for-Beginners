import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Keys Attached")

    Rectangle {
        id: centerRect

        height: 100; width: 300
        color: "greenyellow"
        focus: true     // KeyEvent'i düzgün kullanabilmek için bu gerekli

        anchors.centerIn: parent

        // :::: 1.Yol:::
        Keys.onDigit1Pressed: {
            console.log("1 is pressed")
            event.accepted = true       // Ata öğelerin aynı olaya yanıt vermemesini sağlar
        }

        // :::: 2.Yol:::
        Keys.onPressed: {
            if(event.key === Qt.Key_Space)
            {
                console.log("Space")
            }
            if(event.key === Qt.Key_6 && event.modifiers & Qt.ControlModifier)
            {
                console.log("Control + 6")
            }
        }

        // ::: 3.Yol:::
        Keys.onDigit4Pressed:
        {
            if(event.modifiers === Qt.ControlModifier)
            {
                console.log("Control + 4")
            }
            else
            {
                console.log("4 is pressed")
            }
        }
    }
}
