import QtQuick
import Quickshell
import Quickshell.Services.UPower

import qs.Config

Item {
    id: battery

    width: background.width
    height: Style.barHeight - Style.barMargin*2

    property var power: UPower
    property var displayDevice: power.displayDevice
    property var percent: displayDevice.percentage*100
    property string icon: percent <= 10? "" : (percent <= 50? "" : "")

    Rectangle {
        id: background
        anchors.centerIn: parent

        width: 70
        height: parent.height
        
        radius: Style.cornerRadius
        color: Colors.bg1
        Text {
            id: text
            anchors.centerIn: parent

            

            text: `${battery.icon} ${battery.percent}%`
            color: battery.percent <= 10? '#ff0000' : '#2bff00'
            font {
                pixelSize: Style.fontSize2;
                weight: 500;
                family: Style.fontFamily
            }
        }
    }
}