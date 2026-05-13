import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Hyprland

import qs.Config

Item {
    id: root
    implicitWidth: mainLayout.width
    implicitHeight: 40

    Rectangle {
        id: background
        anchors.fill: parent
        color: Colors.bg1
        radius: Style.cornerRadius

        RowLayout {
            id: mainLayout
            anchors.centerIn: parent
            spacing: Style.spacing

            Repeater {
                // We use Hyprland.workspaces which is a list of active workspaces
                model: Hyprland.workspaces

                delegate: Rectangle {
                    id: workspaceDot
                    
                    // Access workspace data from the model
                    property var workspace: modelData
                    property bool isFocused: Hyprland.focusedWorkspace === workspace

                    width: isFocused ? 24 : 12
                    height: 12
                    radius: height / 2
                    
                    color: isFocused ? Colors.ac2 : (workspace.clients.length > 0 ? Colors.fg1 : Colors.bg2)

                    Text {
                        anchors.centerIn: parent
                        text: workspace.name
                        font.pixelSize: 8
                        color: Colors.bg1
                        visible: isFocused
                    }

                    // Click to switch workspace
                    MouseArea {
                        anchors.fill: parent
                        onClicked: workspace.focus()
                    }
                }
            }
        }
    }
}