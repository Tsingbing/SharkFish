import QtQuick 2.4

Item {
    visible: true
    width: 1920
    height: 1080



    property string src : "images/gr_b.png";
    property int test : 10;
    property bool serialState : false;

    SmallFishsForm {

        color: "#1952bc"
        anchors.fill: parent

//        RoundButton {
//            id: roundButton
//            x: 1868
//            y: 15
//            width: 35
//            height: 32
//            //text: "X"
//            text: myitem.dataStateAck_direction
//            font.bold: true
//            font.pointSize: 14
//            checked: true
//            checkable: false
//            highlighted: false
//            onClicked: Qt.quit()
//        }

        Image {
            id: image_direction
            x: -12
            y: 181
            scale: 0.33
            source: "images/^.png"
            rotation: myitem.axisX
            //transform: Rotation { origin.x: 576/3/2; origin.y: 336/3/2; axis { x: 1; y: 0; z: 0 } angle: 80 }
//            RotationAnimation on rotation {
//                loops: Animation.Infinite
//                running: true
//                from: 0
//                to: 360
//                duration: 3600 * 2
//            }
        }

        Image {
            id: image_yaw
            x: 411
            y: 91
            scale: 0.33
            source: "images/fi_left.png"
            rotation: myitem.axisY
            RotationAnimation on rotation {
                loops: Animation.Infinite
                running: true
                from: -20
                to: 20
                duration: 3600 * 2
            }
        }

        Image {
            id: image_roll
            x: 911
            y: 91
            scale: 0.33
            source: "images/fi_right.png"
            rotation: myitem.axisX
//            RotationAnimation on rotation {
//                loops: Animation.Infinite
//                running: true
//                from: -20
//                to: 20
//                duration: 3600 * 2
//            }
        }
        Image {
            id: image1
            x: 656
            y: 169
            z: 0
            source: "images/O.png"
            transform: Rotation { origin.x: 356/2; origin.y: 356/2; axis { x: 1; y: 0; z: 0 } angle: 80 }
            RotationAnimation on rotation {
                loops: Animation.Infinite
                running: true
                from: 0
                to: 360
                duration: 3600 * 2
            }
        }
        Image {
            id: image2
            x: 1157
            y: 169
            z: 0
            source: "images/O.png"
            transform: Rotation { origin.x: 356/2; origin.y: 356/2; axis { x: 1; y: 0; z: 0 } angle: 80 }
            RotationAnimation on rotation {
                loops: Animation.Infinite
                running: true
                from: 0
                to: 360
                duration: 3600 * 2
            }
        }

        Image {
            id: image3
            x: -141
            y: -164
            scale: 0.33
            fillMode: Image.PreserveAspectCrop
            source: "images/" + test + ".png"
        }
        Image {
            id: image_connectionStation
            x: -114 + 50
            y: -100 + 106
            scale: 0.33
            source: src
            MouseArea {
                anchors.fill: parent
                onClicked: {
                    serialState = !serialState;
                    if(serialState == true)
                        src = "images/gr_a.png" ;
                    else
                        src = "images/gr_b.png";
                    console.debug(src);
                }
            }
        }
    }

    Timer{
        id:t
        interval: 1000
        repeat: true
        running: true
        onTriggered:{
            test += 10;
            if(test >= 100)
            {
                test = 10;
            }
        }
    }
}

