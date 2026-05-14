import QtQuick
import Quickshell
import Qt5Compat.GraphicalEffects
import QtQuick.Effects

import qs.Config

Item {
    id: clock

    property var currentTime: new Date()
    property int updateInterval: 1000

    function updateTime() {
        clock.currentTime = new Date()
    }

    width: background.width
    height: background.height

    Rectangle {
        id: background
        anchors.centerIn: parent

        width: contentHolder.width + Style.barWidgetsWidth
        height: Style.barWidgetsHeight
        
        radius: Style.barWidgetsRadius
        color: Colors.bg1

        Column {
            id: contentHolder
            anchors.centerIn: parent
            spacing: 2

            Text {
                id: time
                anchors.horizontalCenter: parent.horizontalCenter

                color: Colors.tx1
                font {
                    family: Style.fontFamily;
                    weight: Style.fontWeight1;
                    pixelSize: Style.fontSize2
                }
                text: Qt.formatDateTime(currentTime, "󰥔 HH:mm:ss")
            }

            Text {
                id: date

                text: Qt.formatDateTime(currentTime, " dddd, dd/MM")

                font {
                    family: Style.fontFamily;
                    weight: Style.fontWeight1;
                    pixelSize: Style.fontSize3
                }
                
                // TODO: Move this to Style.qml later
                LinearGradient {
                    anchors.fill: parent
                    source: parent
                    start: Qt.point(parent.width/2, 0)
                    end: Qt.point(parent.width/2, parent.height)
                    gradient: Gradient {
                        GradientStop { position: 0.0; color: Colors.fg2 }
                        GradientStop { position: 1.0; color: Colors.ac2 }
                    }
                }
            }
        }
    }

    Timer {
        interval: updateInterval
        repeat: true
        running: true
        triggeredOnStart: true
        onTriggered: updateTime()
    }
    
}