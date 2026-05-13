// GLOBAL STYLE
// This can be for theme switcher (or not)

pragma Singleton

import QtQuick
import Quickshell

Singleton {
    id: style

    // Bar
    readonly property int barHeight: 60

    // Text
    readonly property string fontFamily: "JetBrainsMono Nerd Font Propo"
    readonly property int fontSize: 18

    // Components
    readonly property int widthOffset: 20
    readonly property int heightOffset: 10
    readonly property int cornerRadius: 4

    // Colors and gradients (Based on Colors.qml file)
    

    // Animations

}