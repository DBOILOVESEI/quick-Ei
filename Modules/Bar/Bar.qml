import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Hyprland

import qs.Config

import "../../Micromodules" as Micromodules

PanelWindow {
    id: bar

    height: Style.barHeight
    anchors {
        top: true
        left: true
        right: true
    }

    color: "transparent"
    
    RowLayout {
        anchors.centerIn: parent
        anchors.margins: Style.barMargin

        // Hyprland has its own margin, so we remove bottom margin
        // The margin should be Hyprland.general.gaps_out. Make sure it's
        // The same as barMargin, or else I might tweak out.
        anchors.bottomMargin: 0 
        anchors.fill: parent

        Micromodules.HyprlandWorkspaces {}
        
        Item { Layout.fillWidth: true }
        
        Micromodules.Clock {}

        Item { Layout.fillWidth: true }

        Micromodules.Battery {}

    }
}