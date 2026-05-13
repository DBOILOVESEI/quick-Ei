// GLOBAL COLORS
// This is for theme switcher

pragma Singleton

import QtQuick
import Quickshell

Singleton {
    id: colors

    // Deep Night Purple - Primary Background
    readonly property color bg1: Qt.rgba(22/255, 18/255, 38/255, 1)

    // Muted Indigo - Secondary/Hover Background
    readonly property color bg2: Qt.rgba(45/255, 41/255, 78/255, 1)

    // Electric Lavender - Primary Foreground (Icons/Text)
    readonly property color fg1: Qt.rgba(193/255, 172/255, 255/255, 1)

    // Soft Sakura Pink - Secondary Foreground
    readonly property color fg2: Qt.rgba(255/255, 186/255, 215/255, 1)

    // Pure High-Light - Main Text
    readonly property color tx1: Qt.rgba(240/255, 240/255, 255/255, 1)

    // Subdued Mauve - Secondary Text/Dimmed Info
    readonly property color tx2: Qt.rgba(150/255, 140/255, 180/255, 1)

    // Lantern Glow Amber - accent 1 (Warnings/Special)
    readonly property color ac1: Qt.rgba(255/255, 180/255, 80/255, 1)

    // Sword Blade Violet - accent 2 (Highlights)
    readonly property color ac2: Qt.rgba(160/255, 120/255, 255/255, 1)

    // Deep Crimson - error 1
    readonly property color er1: Qt.rgba(220/255, 60/255, 90/255, 1)

    // Muted Rose - error 2
    readonly property color er2: Qt.rgba(180/255, 80/255, 110/255, 1)
}