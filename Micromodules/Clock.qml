import QtQuick
import Quickshell
import Qt5Compat.GraphicalEffects
import QtQuick.Effects

import qs.Config

Item {
    id: clock

    width: background.width
    height: background.height

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
        height: contentHolder.height + Style.heightOffset
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
                    pixelSize: Style.fontSize
                }
                text: Qt.formatDateTime(new Date(), "󰥔 HH:mm")
            }

            Text {
                id: date
                font {
                    family: Style.fontFamily;
                    weight: 900;
                    pixelSize: Style.fontSize * 0.8
                }
                text: Qt.formatDateTime(new Date(), " dddd, dd/MM")

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