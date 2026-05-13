// GLOBAL STYLE
// This can be for theme switcher (or not)

pragma Singleton

import QtQuick
import Quickshell

Singleton {
    id: style

    // Bar
    readonly property int barHeight: 60
    readonly property int barMargin: 5

    // Text
    readonly property string fontFamily: "JetBrainsMono Nerd Font Propo"
    readonly property int fontSize: 18
    readonly property int fontSize2: 16 // In case you want to fit fontSize3 Text into the same box
    readonly property int fontSize3: 14 // Same as above, just switch places yeah
    readonly property int fontSize4: 12 // I haven't thought of a use case for this yet

    // Components
    readonly property int widthOffset: 20
    readonly property int heightOffset: 10
    readonly property int cornerRadius: 4

    // Colors and gradients (Based on Colors.qml file)
    

    // Animations

}