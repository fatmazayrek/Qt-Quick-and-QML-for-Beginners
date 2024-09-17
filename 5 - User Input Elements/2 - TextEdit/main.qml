import QtQuick 2.15
import QtQuick.Window 2.15

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("TextEdit Element")

    Flickable {
        anchors.centerIn: parent
        height: 400
        width: textEditID.width
        contentHeight: textEditID.implicitHeight

        TextEdit {
            id: textEditID

            width: 250
            text: "In versions of Node.js prior to 6.0.0, Buffer instances were created using the Buffer constructor function," +
                  "which allocates the returned Buffer differently based on what arguments are provided:" +
                  "Passing a number as the first argument to Buffer() (e.g. new Buffer(10)) allocates a new Buffer object of the" +
                  "specified size. Prior to Node.js 8.0.0, the memory allocated for such Buffer instances is not initialized and can contain sensitive data." +
                  "In versions of Node.js prior to 6.0.0, Buffer instances were created using the Buffer constructor function," +
                  "which allocates the returned Buffer differently based on what arguments are provided:" +
                  "Passing a number as the first argument to Buffer() (e.g. new Buffer(10)) allocates a new Buffer object of the" +
                  "specified size. Prior to Node.js 8.0.0, the memory allocated for such Buffer instances is not initialized and can contain sensitive data." +
                  "In versions of Node.js prior to 6.0.0, Buffer instances were created using the Buffer constructor function," +
                  "which allocates the returned Buffer differently based on what arguments are provided:" +
                  "Passing a number as the first argument to Buffer() (e.g. new Buffer(10)) allocates a new Buffer object of the" +
                  "specified size. Prior to Node.js 8.0.0, the memory allocated for such Buffer instances is not initialized and can contain sensitive data."

            wrapMode: TextEdit.Wrap
            focus: true
            selectByMouse: true
        }
    }
}
