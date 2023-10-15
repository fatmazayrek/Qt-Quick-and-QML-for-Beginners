import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Positioners")

    Rectangle {
        id: rooRect

        color: "transparent"
        height: 320
        width: 320
        anchors.centerIn: parent

        Grid {
            columns: 3
            spacing: 10

            horizontalItemAlignment: Grid.AlignHCenter
            verticalItemAlignment: Grid.AlignVCenter


            Rectangle {
                height: 60
                width: 60
                color: "coral"

                Image {
                    id: img1
                    height: 50
                    width: 50
                    source: "images/fluent-emoji_hamburger.png"
                    anchors.centerIn: parent
                }
            }

            Rectangle {
                height: 100
                width: 100
                color: "darkkhaki"

                Image {
                    height: 50
                    width: 50
                    source: "images/fxemoji_tomato.png"
                    anchors.centerIn: parent
                }
            }

            Rectangle {
                height: 100
                width: 100
                color: "darkgray"

                Image {
                    height: 50
                    width: 50
                    source: "images/game-icons_doner-kebab.png"
                    anchors.centerIn: parent
                }
            }

            Rectangle {
                height: 100
                width: 100
                color: "darkgrey"

                Image {
                    height: 50
                    width: 50
                    source: "images/lucide_soup.png"
                    anchors.centerIn: parent
                }
            }

            Rectangle {
                height: 100
                width: 100
                color: "darkred"

                Image {
                    height: 50
                    width: 50
                    source: "images/mdi_pasta.png"
                    anchors.centerIn: parent
                }
            }

            Rectangle {
                height: 100
                width: 100
                color: "gold"

                Image {
                    height: 50
                    width: 50
                    source: "images/noto_meat-on-bone.png"
                    anchors.centerIn: parent
                }
            }

            Rectangle {
                height: 100
                width: 100
                color: "khaki"

                Image {
                    height: 50
                    width: 50
                    source: "images/noto_onion.png"
                    anchors.centerIn: parent
                }
            }

            Rectangle {
                height: 100
                width: 100
                color: "lightsalmon"

                Image {
                    height: 50
                    width: 50
                    source: "images/noto_potato.png"
                    anchors.centerIn: parent
                }
            }

            Rectangle {
                height: 100
                width: 100
                color: "olivedrab"

                Image {
                    height: 50
                    width: 50
                    source: "images/twemoji_pizza.png"
                    anchors.centerIn: parent
                }
            }
        }
    }

    Text {
        id: myText

        anchors.top: rooRect.bottom
        anchors.topMargin: 40
        anchors.horizontalCenter: rooRect.horizontalCenter

        text: "Hello My Friends here is Example"
        font.pointSize: 16
        color: "green"

        MouseArea {
            anchors.fill: parent

            acceptedButtons: Qt.RightButton | Qt.LeftButton
            hoverEnabled: true

            onHoveredChanged: {
                if(containsMouse)
                {
                    myText.font.underline = true
                }
                else
                {
                    myText.font.underline = false
                }
            }

            onClicked: {
                if(mouse.modifiers === Qt.ControlModifier)
                {
                    console.log("Control ile tıklandı")
                }
                else if(mouse.button === Qt.RightButton)
                {
                    console.log("Right Click")
                }
                else
                {
                    console.log("Tamamlandi")
                }
            }
        }
    }

}
