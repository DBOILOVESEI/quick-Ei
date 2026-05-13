import QtQuick
import QtQuick.Layouts
import Quickshell

import qs.Config

import "../../Micromodules" as Micromodules

PanelWindow {
    implicitHeight: Style.bar.height
    anchors {
        top: true
        left: true
        right: true
    }

    color: "transparent"
    
    RowLayout {
        anchors.centerIn: parent
        anchors.margins: Style.bar.margin

        // Hyprland has its own margin, so we remove bottom margin
        // The margin should be Hyprland.general.gaps_out. Make sure it's
        // The same as barMargin, or else I might tweak out.
        anchors.bottomMargin: 0 
        anchors.fill: parent

        Micromodules.Hyprland {}
        
        Item { Layout.fillWidth: true }
        
        Micromodules.Clock {}

        Item { Layout.fillWidth: true }

        Micromodules.Battery {}

    }
}