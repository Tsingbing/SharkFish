import QtQuick 2.0
import QtCharts 2.2
import QtQuick.Controls 2.2
import QtQuick.Window 2.0

Item {

    ChartView {
        id: spline
        //title: "Spline"
        anchors.fill: parent
        //width: 1370
        //height: 900
        //theme: ChartView.ChartThemeBlueCerulean
        backgroundColor: "#000000FF"
        antialiasing: true

        ValueAxis {
            id: axis_X
            min: 0
            max: 300
            tickCount: 9
        }

        ValueAxis {
            id: axis_Y
            min: -360
            max: 360
            tickCount: 20
        }

        SplineSeries {
            id: splineSeries
            name: "dataStateAck_pitch"
            color: "#00ff00"
            width: 2
            axisAngular: axis_X
            axisRadial: axis_Y
//            XYPoint { x: 0; y: 9}
//            XYPoint { x: 1; y: 10 }
//            XYPoint { x: 2; y: 30 }
//            XYPoint { x: 3; y: 50 }
//            XYPoint { x: 4; y: 50 }
//            XYPoint { x: 5; y: 0 }
        }
        SplineSeries {
            id: splineSeries1
            name: "dataStateAck_yaw"
            color: "#0000ff"
            width: 2
            axisAngular: axis_X
            axisRadial: axis_Y
//            XYPoint { x: 0; y: 50}
//            XYPoint { x: 1; y: 50 }
//            XYPoint { x: 2; y: 50 }
//            XYPoint { x: 3; y: 50 }
//            XYPoint { x: 4; y: 50 }
//            XYPoint { x: 5; y: 50 }
        }
        SplineSeries {
            id: splineSeries2
            name: "dataStateAck_roll"
            color: "#ff0000"
            width: 2
            axisAngular: axis_X
            axisRadial: axis_Y
//            XYPoint { x: 0; y: 50}
//            XYPoint { x: 1; y: 50 }
//            XYPoint { x: 2; y: 50 }
//            XYPoint { x: 3; y: 50 }
//            XYPoint { x: 4; y: 50 }
//            XYPoint { x: 5; y: 50 }
        }
    }

    property int test : 5;
    Timer{
        id:t
        interval: 500
        repeat: true
        running: true
        onTriggered:{
            test += 1;
            //splineSeries.append(test,serialConnect.axisZ)
            //console.debug("this is ");
            //series1.clear();
            //series2.clear();
            //splineSeries.clear();
            for (var i = 0; i <= 100; i++) {
                //series1.append(i, Math.random());
                //series2.append(i, Math.random());
                //splineSeries.append(i,Math.random()*10);
            }
            //splineSeries.append(test,Number(myitem.dataStateAck_pitch));
            //splineSeries1.append(test,Number(myitem.dataStateAck_yaw));
            //splineSeries2.append(test,Number(myitem.dataStateAck_roll));
            //spline.scrollRight(55);
            //splineSeries.at(3,serialConnect.axisZ);
            //splineSeries.append(3,serialConnect.axisZ);
            if(test > 300)
            {
                splineSeries.clear();
                splineSeries1.clear();
                splineSeries2.clear();
                test  = 0;
            }
        }
    }
}
