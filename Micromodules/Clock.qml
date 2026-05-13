import QtQuick
import Quickshell
import Qt5Compat.GraphicalEffects
import QtQuick.Effects

import qs.Config

Item {
    id: clock

    width: background.width
    height: Style.barHeight - Style.barMargin*2

    property var currentTime: new Date()

    Timer {
        interval: 1000
        repeat: true
        running: true
        triggeredOnStart: true
        onTriggered: clock.currentTime = new Date()
    }
    
    Rectangle {
        id: background
        anchors.centerIn: parent

        width: contentHolder.width + Style.widthOffset
        height: parent.height
        
        radius: Style.cornerRadius
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
                    weight: 900;
                    pixelSize: Style.fontSize2
                }
                text: Qt.formatDateTime(new Date(), "󰥔 HH:mm")
            }

            Text {
                id: date

                text: Qt.formatDateTime(new Date(), " dddd, dd/MM")

                font {
                    family: Style.fontFamily;
                    weight: 900;
                    pixelSize: Style.fontSize3
                }
                
                // TODO: Move this to Style.qml later
                LinearGradient {
                    anchors.fill: parent
                    source: parent
                    start: Qt.point(parent.width/2, 0)
                    end: Qt.point(parent.width/2, parent.height)
                    gradient: Gradient {
                        GradientStop { position: 0.0; color: Colors.tx1 }
                        GradientStop { position: 1.0; color: Colors.fg1 }
                    }
                }
            }
        }
    }
    
}