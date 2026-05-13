import QtQuick
import QtQuick.Layouts
import Quickshell

import qs.Config

import "../../Micromodules" as Micromodules

PanelWindow {
    implicitHeight: Style.barHeight
    anchors {
        top: true
        left: true
        right: true
    }

    color: "transparent"
    
    RowLayout {
        anchors.fill: parent

        Micromodules.Hyprland {}
        
        Item { Layout.fillWidth: true }
        
        Micromodules.Clock {}

        Item { Layout.fillWidth: true }

    }
}