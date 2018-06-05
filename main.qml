import QtQuick 2.6
import QtQuick.Window 2.2
import QtQuick.Controls 2.2
import com.robosea.opencv 1.0
import com.robosea.serialport 1.0
import com.robosea.qbserialport 1.0
import QtCharts 2.2
Window {
    visible: true
    width: 1920
    height: 1080
    title: qsTr("大鲨鱼")

    Component.onCompleted:
    {
        //showFullScreen();
    }

    RoundButton {
        id: roundButton
        x: 1878
        y: 9
        z: 1
        width: 34
        height: 31
        text: "X"
        font.pointSize: 10
        onClicked:
        {
            showMaximized();
            video.imageFlag = 0;
        }
    }

    Button {
        text: "全屏"
        width: 34
        height: 31
        x: 1828
        y: 9
        z: 1
        onClicked:
            {
                //showFullScreen();
                video.imageFlag = 2;
            }
    }
    Win {
        id:             sub_W
        width:          1600
        height:         900
        visible:        false
        Button {
            text: "全屏"
            width: 34
            height: 31
            x: 1828
            y: 9
            z: 1
            onClicked: sub_W.showFullScreen();
        }
        RoundButton {
            id: roundButton1
            x: 1878
            y: 9
            z: 3
            width: 34
            height: 31
            text: "X"
            font.pointSize: 10
            onClicked: sub_W.showNormal();
        }
        Chart1 {
            width: 1370
            height: 900
        }
    }
    Win {
        id:             smallFish_w
        width:          1600
        height:         900
        visible:        false
        Button {
            text: "全屏"
            width: 34
            height: 31
            x: 1828
            y: 9
            z: 1
            onClicked: smallFish_w.showFullScreen();
        }
        RoundButton {
            id: roundButton2
            x: 1878
            y: 9
            z: 3
            width: 34
            height: 31
            text: "X"
            font.pointSize: 10
            onClicked: smallFish_w.showNormal();
        }
        SmallFishs {

        }
    }
//    SerialPortItem {
//        id : myitem
//        running: true
//        waitTimeOut: 100

//    }
    QBSerialItem {
        id: qbSerialitem
        waitTimeOut: 10
        portName: "COM1"
    }

    TabBar {
        id: tabBar
        width: 250
        height: 18
        z: 1
        currentIndex: swipeView.currentIndex
        TabButton {
            height: 20
            text: qsTr("大鲨鱼")
        }
        TabButton {
            height: 20
            text: qsTr("小蝠鲼")
        }
        TabButton {
            height: 20
            text: qsTr("大蝠鲼")
        }
        TabButton {
            height: 20
            text: qsTr("设置")
        }
        TabButton {
            height: 20
            text: qsTr("关于")
        }
    }

    SwipeView {
        id: swipeView
        anchors.fill: parent
        currentIndex: tabBar.currentIndex

        Page {
            OpencvItem{
                id: video
                //x: 0
                //y: 0
                //width: 1920
                //height: 1080
                anchors.fill: parent;
                running: true
                imageFlag: 0
                //z:1
                //curFrame:mui_face
            }
            MainForm {
                anchors.fill: parent

                //                mouseArea.onClicked: {
                //                    console.log(qsTr('Clicked on background. Text: "' + textEdit.text + '"'))
                //                }
                Chart1 {
                    x:45
                    y:245
                    width: 383
                    height: 250
                    MouseArea {
                        anchors.fill: parent
                        onClicked: sub_W.show();
                    }
                }
                Image {
                    id: mui_face
                    x: 460
                    y: 52
                    transformOrigin: Item.Center
                    source: "res/mui_face.svg"
                    //source: video.curFrame
                    transform: Rotation { origin.x: 500; origin.y: 500; axis { x: 1; y: 0; z: 0 } angle: 73 }
                }

                Image {
                    id: mui_ring2
                    x: 460
                    y: 52
                    source: "res/mui_ring2.svg"
                    RotationAnimation on rotation {
                        loops: Animation.Infinite
                        running: true
                        from: 0
                        to: 360
                        duration: 3600 * 2
                    }
                }

                Image {
                    id: mui_ring
                    x: 460
                    y: 52
                    source: "res/mui_ring.svg"
                }
                Image {
                    id: powers
                    x: 1612
                    y: 756
                    source: "/res/20.png"
                }

                Image {
                    id: compass_hand
                    x: 1650
                    y: 50
                    source: "res/compass_hand.svg"
                }


                Image {
                    id: image5
                    x: 1337
                    y: 388
                    scale: 0.2
                    source: "res/fi_right.png"
                }

                Image {
                    id: image6
                    x: 1475
                    y: 528
                    scale: 0.28
                    source: "res/^.png"
                }

                Image {
                    id: image4
                    x: 1337
                    y: 246
                    scale: 0.2
                    source: "res/fi_left.png"
                }
            }
        }
        SmallFishs {
            Button {
                text: "显示窗体"
                x: 1696
                y: 300
                onClicked: smallFish_w.show()
                z:5
            }
        }
        Page {
            Button {
                text: "显示窗体"
                x: 1696
                y: 300
                onClicked: sub_W.show()
                z:5
            }
            Chart1 {
                width: 1370
                height: 900
            }
        }
        Page {
            Button {
                x: 500
                y: 500
                text: "dakai"
                onClicked: {                    
//                        myitem.running = true;
//                        myitem.waitTimeOut = 300;
//                        myitem.portName = "COM9";
                    qbSerialitem.start(100);
                }
            }
            Button {
                x: 500
                y: 400
                text: "关闭"
                onClicked: {
                        //myitem.running = false;
                    qbSerialitem.stop();
                }
            }
        }
        Settings {

        }
    }
}
