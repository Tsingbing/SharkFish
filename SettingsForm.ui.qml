import QtQuick 2.4
import QtQuick.Controls 2.2

Item {
    width: 1920
    height: 1080

    Column {
        id: column
        x: 122
        y: 124
        width: 244
        height: 400

        CheckBox {
            id: checkBox
            text: qsTr("Check Box")
        }

        CheckBox {
            id: checkBox1
            text: qsTr("Check Box")
        }
    }

    CheckBox {
        id: checkBox2
        x: 122
        y: 210
        text: qsTr("Check Box")
    }

    CheckBox {
        id: checkBox3
        x: 122
        y: 264
        text: qsTr("Check Box")
    }

    Switch {
        id: switch1
        x: 590
        y: 124
        text: qsTr("Switch")
    }

    Switch {
        id: switch2
        x: 590
        y: 170
        text: qsTr("Switch")
    }

    Switch {
        id: switch3
        x: 590
        y: 216
        text: qsTr("Switch")
    }

    Switch {
        id: switch4
        x: 590
        y: 270
        text: qsTr("Switch")
    }

    GroupBox {
        id: groupBox
        x: 58
        y: 386
        width: 436
        height: 544
        title: qsTr("Group Box")

        Button {
            id: button
            x: -12
            y: 24
            text: qsTr("关闭视频")
            onClicked: video.running = false
        }

        Button {
            id: button1
            x: -12
            y: 92
            text: qsTr("打开视频")
            onClicked: video.running = true
        }

        Button {
            id: button2
            x: -12
            y: 178
            text: qsTr("关闭串口")
            onClicked: myitem.running = false
        }

        Button {
            id: button3
            x: -12
            y: 252
            text: qsTr("打开串口")
            onClicked: myitem.running = true
        }

        Button {
            id: button4
            x: -12
            y: 326
            text: qsTr("Button")
        }

        Button {
            id: button5
            x: -12
            y: 410
            text: qsTr("Button")
        }
    }
}
