import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Hyprland

import Qt5Compat.GraphicalEffects

import qs.Config

Item {
    id: hyprland

    property int workspaceSizeOffset: Style.barWidgetsMargin

    implicitWidth: background.width
    implicitHeight: background.height

    // STYLE MATH:
    // 1. Workspaces expand x on all sides
    // 2. Right of workspace i and Left of workspace j create x*2
    // 3. Add x*2 to the width and height of the background

    Rectangle {
        id: backgroundBorder
        //anchors.fill: parent
        anchors.centerIn: parent

        width: contentHolder.width + workspaceSizeOffset
        height: Style.barWidgetsHeight

        radius: Style.barWidgetsRadius

        color: Colors.bg1

        Rectangle {
                id: background
                anchors.centerIn: parent

                width: parent.width - Style.barWidgetsBorderWidth*2
                height: parent.height - Style.barWidgetsBorderWidth*2

                radius: parent.radius

                color: parent.color

                gradient: Style.gradBg1

                RowLayout {
                    id: contentHolder
                    anchors.centerIn: parent

                    height: parent.height
                    spacing: 0

                    Repeater {
                        model: Hyprland.workspaces
                        delegate: Rectangle {
                            //id: hyprWorkspace
                            
                            property var workspace: modelData
                            property bool isFocused: Hyprland.focusedWorkspace === workspace
                            property bool isHovered: false

                            height: background.height - workspaceSizeOffset
                            width: height
                            Layout.margins: Style.barWidgetsMargin/2
                            radius: Style.barWidgetsRadius

                            color: isFocused? Colors.bg2 : ( isHovered? Colors.bg2 : Colors.bg1 )
                            
                            border.color: isFocused? Colors.fg1 : "transparent"
                            border.width: Style.barWidgetsBorderWidth

                            Text {
                                anchors.centerIn: parent

                                text: isFocused? "󱐋" : workspace.name
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

                            Behavior on color {
                                ColorAnimation {
                                    duration: Style.anim2
                                }
                            }

                            Behavior on border.color {
                                ColorAnimation {
                                    duration: Style.anim2
                                }
                            }
                        }

                    }
                }
            }
    
    }

   
}