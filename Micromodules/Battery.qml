import QtQuick
import Quickshell
import Quickshell.Services.UPower

import qs.Config

Item {
    id: battery

    property var percent: UPower.displayDevice.percentage*100
    property var updateInterval: 1000 // Five seconds so it doesn't loop too fast
    property var formats: {
        "10": {
            "icon": "",
            "color": Colors.er1
        },

        "50": {
            "icon": "",
            "color": Colors.ac1
        },

        "100": {
            "icon": "",
            "color": Colors.ac2
        }
    }
    property var defaultFormatFallback: format["100"]

    function getFormatForPercent() {
        percent = UPower.displayDevice.percentage*100;

        for (const currentPercentString in formats) {
            var currentPercent = Number(currentPercentString);
            console.log("Current percent: ", currentPercent);
            if (!currentPercent) { continue; };
            if (percent > currentPercent) { continue; };

            return formats[currentPercentString];
        }

        return defaultFormatFallback;
    }

    function formatBattery() {
        var format = getFormatForPercent();
        if (!format) { format = defaultFormatFallback; };
        
        console.log(format.icon);
        batteryText.text = `${format.icon} ${percent}%`;
        batteryText.color = format.color;
    }

    width: background.width
    height: Style.barHeight - Style.barMargin*2

    Rectangle {
        id: background
        anchors.centerIn: parent

        width: 70
        height: parent.height
        
        radius: Style.cornerRadius
        color: Colors.bg1
        Text {
            id: batteryText
            anchors.centerIn: parent

            text: "N/A%"
            color: Colors.er1
            font {
                pixelSize: Style.fontSize2;
                weight: 500;
                family: Style.fontFamily
            }
        }
    }

    Timer {
        interval: updateInterval
        repeat: true
        running: true
        triggeredOnStart: true
        onTriggered: formatBattery()
    }
}