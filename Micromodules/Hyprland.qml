import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Hyprland

import qs.Config

Item {
    id: hyprland

    width: background.width
    height: Style.barWidgetsHeight

    Rectangle {
        id: background
        anchors.centerIn: parent
        
        width: contentHolder.width
        height: parent.height

        radius: Style.radius4
        color: Colors.bg1

        RowLayout {
            id: contentHolder
            anchors.centerIn: parent

            height: parent.height
            spacing: 0

            Repeater {
                model: Hyprland.workspaces
                delegate: Rectangle {
                    id: hyprWorkspace
                    
                    width: hyprWorkspace.height
                    height: parent.height * 0.7
                    Layout.fillWidth: true 
                    //Layout.margins: Style.barMargin

                    property var workspace: modelData
                    property bool isFocused: Hyprland.focusedWorkspace === workspace
                    property bool isHovered: false
                    
                    radius: Style.cornerRadius

                    color: isFocused? Colors.fg1 : ( isHovered? Colors.fg1 : Colors.bg2)

                    Text {
                        anchors.centerIn: parent

                        text: isFocused? "" : ""
                        color: isFocused? Colors.tx1 : (isHovered? Colors.tx1 : Colors.tx2)

                        font {
                            pixelSize: Style.fontSize2;
                            weight: fontWeight1;
                            family: Style.fontFamily
                        }

                    }                    
                    MouseArea {
                        anchors.fill: parent
                        hoverEnabled: true
                        
                        onClicked: Hyprland.dispatch("workspace " + workspace.name)
                        onEntered: isHovered = true
                        onExited: isHovered = false
                    }
                }

            }
        }
    }
    
}