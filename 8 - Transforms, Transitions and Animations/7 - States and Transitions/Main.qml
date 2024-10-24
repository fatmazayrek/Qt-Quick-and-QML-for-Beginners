import QtQuick

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("States and Transitions")

    Rectangle {
        id: root
        anchors.fill: parent
        state: "spring"

        Rectangle {
            id: sky
            width: parent.width
            height: 200

            gradient: Gradient {
                orientation: Gradient.Horizontal
                GradientStop {position: 0; color: (root.state === "spring") ? "dodgerblue" : "lightskyblue"}
                GradientStop {position: 1; color: (root.state === "spring") ? "darkturquoise" : "lightsteelblue"}
            }
        }

        Rectangle {
            id: sun
            width: 100; height: 100
            radius: 50
            x: parent.width - width - 100
            y: 50
            color: "gold"

            MouseArea {
                anchors.fill: parent
                onClicked: {
                    root.state = (root.state === "summer") ? "spring": "summer"
                }
            }
        }

        Rectangle {
            id: ground
            width: parent.width
            anchors.top: sky.bottom
            anchors.bottom: parent.bottom

            gradient: Gradient {
                GradientStop { position: 0; color: (root.state === "spring") ? "forestgreen" : "sandybrown" }
                GradientStop { position: 0.1; color: (root.state === "spring") ? "seagreen" : "sienna" }
            }
        }

        Image {
            id: treespring
            x: 50; y: 100
            width: 200; height: 300
            opacity: 1
            source: "images/treespringsmall.png"
        }

        Image {
            id: treesummer
            x: 50; y: 100
            width: 200; height: 300
            opacity: 0
            source: "images/treesummersmall.png"
        }

        states: [
            State {
                    name: "summer"
                    PropertyChanges {
                        target: treespring
                        opacity: 0
                    }
                    PropertyChanges {
                        target: treesummer
                        opacity: 1
                    }
                    PropertyChanges {
                        target: sun
                        color: "darkorange"
                    }
                }
        ]

        transitions: [
            Transition {
                NumberAnimation {
                    properties: "opacity"
                    duration: 500
                }
                ColorAnimation {
                    duration: 500
                }
            }
        ]
    }
}