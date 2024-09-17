import QtQuick
import QtQuick.Layouts

Window {
    id: mainRoot
    width: 640
    height: 480
    visible: true
    color: "white"
    title: qsTr("Easing Explained")

    property int animDuration: 500

    Flickable {
        anchors.fill: parent
        contentHeight: columnLayout.implicitHeight

        ColumnLayout {
            id: columnLayout
            width: parent.width
            spacing: 2

            LittleRectangle {
                backgorundColor: "gray"
                startColor: "beige"
                endColor: "aqua"
                easingText: "Linear"
                animateDuration: animDuration
                easingType: Easing.Linear
                containerWidth: parent.width
            }

            LittleRectangle {
                backgorundColor: "gray"
                startColor: "beige"
                endColor: "brown"
                easingText: "InQuad"
                animateDuration: animDuration
                easingType: Easing.InQuad
                containerWidth: parent.width
            }

            LittleRectangle {
                backgorundColor: "gray"
                startColor: "beige"
                endColor: "coral"
                easingText: "OutQuad"
                animateDuration: animDuration
                easingType: Easing.OutQuad
                containerWidth: parent.width
            }

            LittleRectangle {
                backgorundColor: "gray"
                startColor: "beige"
                endColor: "darkcyan"
                easingText: "InOutQuad"
                animateDuration: animDuration
                easingType: Easing.InOutQuad
                containerWidth: parent.width
            }

            LittleRectangle {
                backgorundColor: "gray"
                startColor: "beige"
                endColor: "darkmagenta"
                easingText: "OutInQuad"
                animateDuration: animDuration
                easingType: Easing.OutInQuad
                containerWidth: parent.width
            }

            LittleRectangle {
                backgorundColor: "gray"
                startColor: "beige"
                endColor: "darkseagreen"
                easingText: "InCubic"
                animateDuration: animDuration
                easingType: Easing.InCubic
                containerWidth: parent.width
            }
            LittleRectangle {
                backgorundColor: "gray"
                startColor: "beige"
                endColor: "dimgrey"
                easingText: "OutCubic"
                animateDuration: animDuration
                easingType: Easing.OutCubic
                containerWidth: parent.width
            }
            LittleRectangle {
                backgorundColor: "gray"
                startColor: "beige"
                endColor: "gold"
                easingText: "InOutCubic"
                animateDuration: animDuration
                easingType: Easing.InOutCubic
                containerWidth: parent.width
            }
            LittleRectangle {
                backgorundColor: "gray"
                startColor: "beige"
                endColor: "hotpink"
                easingText: "OutInCubic"
                animateDuration: animDuration
                easingType: Easing.OutInCubic
                containerWidth: parent.width
            }
            LittleRectangle {
                backgorundColor: "gray"
                startColor: "beige"
                endColor: "lightseagreen"
                easingText: "InQuad"
                animateDuration: animDuration
                easingType: Easing.InQuad
                containerWidth: parent.width
            }
            LittleRectangle {
                backgorundColor: "gray"
                startColor: "beige"
                endColor: "olive"
                easingText: "OutQuad"
                animateDuration: animDuration
                easingType: Easing.OutQuad
                containerWidth: parent.width
            }
            LittleRectangle {
                backgorundColor: "gray"
                startColor: "beige"
                endColor: "orangered"
                easingText: "InOutQuad"
                animateDuration: animDuration
                easingType: Easing.InOutQuad
                containerWidth: parent.width
            }
            LittleRectangle {
                backgorundColor: "gray"
                startColor: "beige"
                endColor: "springgreen"
                easingText: "OutInQuad"
                animateDuration: animDuration
                easingType: Easing.OutInQuad
                containerWidth: parent.width
            }
        }
    }
} // mainRoot
