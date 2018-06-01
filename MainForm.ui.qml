import QtQuick 2.6
import QtQuick.Controls 2.2

Rectangle {
    property alias mouseArea: mouseArea

    width: 1920
    height: 1080
    color: "#00000000"
    opacity: 1

    MouseArea {
        id: mouseArea
        anchors.rightMargin: 0
        anchors.bottomMargin: 0
        anchors.leftMargin: 0
        anchors.topMargin: 0
        anchors.fill: parent


    }

    Image {
        id: image1
        x: 0
        y: 772
        source: "res/Depth.svg"

        Text {
            id: text1
            x: 48
            y: 88
            width: 213
            height: 36
            color: "#34b71a"
            text: qsTr("深度: ") + myitem.dataStateAck_nowDeepth + "M"
            font.bold: true
            horizontalAlignment: Text.AlignLeft
            font.pixelSize: 39
        }

        Text {
            id: text2
            x: 48
            y: 171
            width: 213
            height: 36
            color: "#30bf1b"
            text: qsTr("温度：20")
            font.bold: true
            horizontalAlignment: Text.AlignLeft
            font.pixelSize: 40
        }

        Text {
            id: text3
            x: 813
            y: 246
            width: 268
            height: 40
            color: "#56f137"
            text: qsTr("速度：200M")
            font.bold: true
            font.pixelSize: 43
            horizontalAlignment: Text.AlignHCenter
        }
    }

    Image {
        id: image
        x: 0
        y: 0
        opacity: 1

        //source: "res/menu_face.svg"
        Image {
            id: image2
            x: 1650
            y: 50
            width: 270
            height: 270
            source: "res/compass_ring.svg"
        }

        Image {
            id: image3
            x: 0
            y: 983
            source: "res/Mileage.svg"
        }
    }
}
