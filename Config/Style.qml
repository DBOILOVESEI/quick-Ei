pragma Singleton
import QtQuick
import Quickshell

QtObject {
    id: style

    // Shell and Layout

    // GLOBAL SETTINGS - BAR
    readonly property int barHeight: 60
    readonly property int barMargin: style.margin4
    readonly property int barWidgetsRadius: style.radius4
    readonly property int barWidgetsMargin: style.margin4
    readonly property int barWidgetsHeight: style.barHeight - style.barWidgetsMargin*2
    readonly property int barWidgetsWidth: style.barWidgetsMargin*2
    readonly property int barWidgetsBorderWidth: style.border4

    // Shapes

    readonly property int radius1: 100 // Pill shape
    readonly property int radius2: 16  // Very rounded
    readonly property int radius3: 8   // Standard container
    readonly property int radius4: 4   // Subtle rounding
    readonly property int radius5: 0   // Sharp corners

    readonly property int border1: 5
    readonly property int border2: 4
    readonly property int border3: 3
    readonly property int border4: 2
    readonly property int border5: 1


    // Margins (External Spacing)
    readonly property int margin1: 24
    readonly property int margin2: 16
    readonly property int margin3: 8
    readonly property int margin4: 4
    readonly property int margin5: 2

    // Padding (Internal Spacing / Offsets)
    readonly property int padding1: 30
    readonly property int padding2: 20
    readonly property int padding3: 12
    readonly property int padding4: 8
    readonly property int padding5: 4

    // Text
    readonly property string fontFamily: "JetBrainsMono Nerd Font Propo"
    
    readonly property int fontSize1: 20
    readonly property int fontSize2: 18
    readonly property int fontSize3: 16
    readonly property int fontSize4: 14
    readonly property int fontSize5: 12

    readonly property int fontWeight1: 900
    readonly property int fontWeight2: 700
    readonly property int fontWeight3: 500
    readonly property int fontWeight4: 300
    readonly property int fontWeight5: 100

    // Gradients
    readonly property list<GradientStop> gradientText: [
        GradientStop { position: 0.0; color: Colors.fg2 },
        GradientStop { position: 1.0; color: Colors.ac2 }
    ]

    // Animations
    readonly property int anim1: 50
    readonly property int anim2: 150
    readonly property int anim3: 225
    readonly property int anim4: 300
    readonly property int anim5: 500
}