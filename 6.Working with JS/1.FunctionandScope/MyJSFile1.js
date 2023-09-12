.import "MyJSFile2.js" as JS2

// Tamamen Klasörü eklemek istersen -> Qt.include("MyJSFile2.js")
// Örneğin direk main.qml'de JS1.add(80, 89) denecekti

function greeting() {

    console.log("Hello there")
}

function addAges(ages1, ages2) {

    console.log("This is in MyJSFile1")
    return JS2.add(ages1, ages2)
}
