//import QtQuick 2.4

//Item {
//    width: 400
//    height: 400
//}
import QtQuick 2.4
import QtQuick.Controls 2.2

Rectangle {

    width: 1920
    height: 1080

    Image {
        id: image
        x: 0
        y: 0
        source: "images/background.png"

        Text {
            id: text1
            x: 42
            y: 40
            width: 92
            height: 48
            color: "#40f65d"
            text: test
            font.family: "Tahoma"
            font.bold: true
            font.pixelSize: 45
        }

        Text {
            id: text2
            x: 154
            y: 535
            color: "#f3e827"
            text: myitem.dataStateAck_nowDeepth
            //padding: 0
            font.family: "Tahoma"
            font.bold: true
            font.pixelSize: 23
        }

        Text {
            id: text3
            x: 156
            y: 595
            color: "#f7fb4e"
            text: myitem.dataStateAck_point_x
            font.family: "Tahoma"
            font.bold: true
            font.pixelSize: 14
        }

        Text {
            id: text4
            x: 156
            y: 636
            color: "#f7fb4e"
            text: myitem.dataStateAck_point_y
            font.pixelSize: 14
            font.bold: true
            font.family: "Tahoma"
        }

        Text {
            id: text5
            x: 378
            y: 595
            color: "#f7fb4e"
            text: myitem.dataStateAck_temp
            font.pixelSize: 14
            font.bold: true
            font.family: "Tahoma"
        }

        Text {
            id: text6
            x: 378
            y: 636
            color: "#f7fb4e"
            text: myitem.dataStateAck_hum
            font.pixelSize: 14
            font.bold: true
            font.family: "Tahoma"
        }

        Text {
            id: text7
            x: 154
            y: 710
            color: "#f3e827"
            text: test / 10
            font.pixelSize: 23
            font.bold: true
            //padding: 0
            font.family: "Tahoma"
        }

        Text {
            id: text8
            x: 156
            y: 767
            color: "#f7fb4e"
            text: test / 10
            font.pixelSize: 14
            font.bold: true
            font.family: "Tahoma"

            Text {
                id: text12
                x: 378
                y: 595
                color: "#f7fb4e"
                text: test / 10
                font.pixelSize: 14
                font.bold: true
                font.family: "Tahoma"
            }

            Text {
                id: text13
                x: 378
                y: 636
                color: "#f7fb4e"
                text: test / 10
                font.pixelSize: 14
                font.bold: true
                font.family: "Tahoma"
            }
        }

        Text {
            id: text9
            x: 156
            y: 808
            color: "#f7fb4e"
            text: test / 10
            font.pixelSize: 14
            font.bold: true
            font.family: "Tahoma"
        }

        Text {
            id: text10
            x: 378
            y: 767
            color: "#f7fb4e"
            text: test / 10
            font.pixelSize: 14
            font.bold: true
            font.family: "Tahoma"
        }

        Text {
            id: text11
            x: 378
            y: 808
            color: "#f7fb4e"
            text: test / 10
            font.pixelSize: 14
            font.bold: true
            font.family: "Tahoma"
        }

        Text {
            id: text14
            x: 378
            y: 938
            color: "#f7fb4e"
            text: test / 10
            font.pixelSize: 14
            font.bold: true
            font.family: "Tahoma"
        }

        Text {
            id: text15
            x: 378
            y: 979
            color: "#f7fb4e"
            text: test / 10
            font.pixelSize: 14
            font.bold: true
            font.family: "Tahoma"
        }

        Text {
            id: text16
            x: 156
            y: 938
            color: "#f7fb4e"
            text: test / 10
            font.pixelSize: 14
            Text {
                id: text17
                x: 378
                y: 595
                color: "#f7fb4e"
                text: qsTr("22")
                font.pixelSize: 14
                font.bold: true
                font.family: "Tahoma"
            }

            Text {
                id: text18
                x: 378
                y: 636
                color: "#f7fb4e"
                text: test / 10
                font.pixelSize: 14
                font.bold: true
                font.family: "Tahoma"
            }
            font.bold: true
            font.family: "Tahoma"
        }

        Text {
            id: text19
            x: 156
            y: 979
            color: "#f7fb4e"
            text: test / 10
            font.pixelSize: 14
            font.bold: true
            font.family: "Tahoma"
        }

        Text {
            id: text20
            x: 154
            y: 881
            color: "#f3e827"
            text: test / 10
            font.pixelSize: 23
            //padding: 0
            font.bold: true
            font.family: "Tahoma"
        }
    }
}
