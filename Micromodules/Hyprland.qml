import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Hyprland

import qs.Config

Item {
    id: hyprland

    implicitWidth: background.width
    implicitHeight: background.height

    // STYLE MATH:
    // 1. Workspaces expand x on all sides
    // 2. Right of workspace i and Left of workspace j create x*2
    // 3. Add x*2 to the width of the background

    Rectangle {
        id: background
        anchors.centerIn: parent
        
        width: contentHolder.width + Style.barMargin
        height: Style.barWidgetsHeight

        radius: Style.barWidgetsRadius
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
                    
                    property var workspace: modelData
                    property bool isFocused: Hyprland.focusedWorkspace === workspace
                    property bool isHovered: false

                    height: background.height - Style.barWidgetsMargin*2
                    width: height
                    Layout.margins: Style.barWidgetsMargin/2

                    radius: Style.barWidgetsRadius

                    color: isFocused? Colors.bg2 : ( isHovered? Colors.bg2 : Colors.bg1 )

                    Text {
                        anchors.centerIn: parent

                        text: isFocused? "" : ""
                        color: isFocused? Colors.tx1 : (isHovered? Colors.tx1 : Colors.tx2)

                        font {
                            pixelSize: Style.fontSize1;
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