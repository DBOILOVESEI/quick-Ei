pragma Singleton
import QtQuick
import Quickshell

import qs.Config

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

    // Animations
    readonly property int anim1: 50
    readonly property int anim2: 150
    readonly property int anim3: 225
    readonly property int anim4: 300
    readonly property int anim5: 500

    // Gradients

    // ==========================================
    // 2. UNIVERSAL GRADIENTS
    // ==========================================

    // --- BACKGROUND SERIES (Heavy / Foundation) ---
    
    // gradBg1: Subtle structural depth (Muted Indigo -> Deep Purple)
    readonly property Gradient gradBg1: Gradient {
        GradientStop { position: 0.0; color: Colors.bg2 }
        GradientStop { position: 1.0; color: Colors.bg1 }
    }

    // gradBg2: Cyberpunk glass-edge effect (Translucent Indigo -> Translucent Violet Accent)
    readonly property Gradient gradBg2: Gradient {
        GradientStop { position: 0.0; color: Qt.rgba(Colors.bg2.r, Colors.bg2.g, Colors.bg2.b, 0.7) }
        GradientStop { position: 1.0; color: Qt.rgba(Colors.ac2.r, Colors.ac2.g, Colors.ac2.b, 0.2) }
    }


    // --- TEXT / CONTENT SERIES (High Contrast / Readable) ---
    
    // gradTx1: Ethereal high-light (Pure Text -> Subdued Mauve Text)
    readonly property Gradient gradTx1: Gradient {
        GradientStop { position: 0.0; color: Colors.tx1 }
        GradientStop { position: 1.0; color: Colors.tx2 }
    }

    // gradTx2: Neon pop for typography or icons (Electric Lavender -> Sakura Pink)
    readonly property Gradient gradTx2: Gradient {
        GradientStop { position: 0.0; color: Colors.fg1 }
        GradientStop { position: 1.0; color: Colors.fg2 }
    }


    // --- ACCENT SERIES (Vibrant Highlights / Attention Grabbing) ---
    
    // gradAc1: Electric Prism (Sword Blade Violet -> Electric Lavender)
    readonly property Gradient gradAc1: Gradient {
        GradientStop { position: 0.0; color: Colors.ac2 }
        GradientStop { position: 1.0; color: Colors.fg1 }
    }

    // gradAc2: Twilight Sunrise cross-mix (Lantern Glow Amber -> Sakura Pink)
    readonly property Gradient gradAc2: Gradient {
        GradientStop { position: 0.0; color: Colors.ac1 }
        GradientStop { position: 1.0; color: Colors.fg2 }
    }


    // --- ALERT SERIES (Error States / Notifications) ---
    
    // gradEr1: Deep Crisis blend (Muted Rose -> Deep Crimson)
    readonly property Gradient gradEr1: Gradient {
        GradientStop { position: 0.0; color: Colors.er2 }
        GradientStop { position: 1.0; color: Colors.er1 }
    }

    // gradEr2: Toxic Threat cross-mix (Deep Crimson -> Lantern Glow Amber)
    readonly property Gradient gradEr2: Gradient {
        GradientStop { position: 0.0; color: Colors.er1 }
        GradientStop { position: 1.0; color: Colors.ac1 }
    }
}