import VPlay 2.0
import QtQuick 2.0

Scene {
    id: scene

    width: 320
    height: 480

    opacity: 0
    visible: opacity > 0

    state: ""

    states: [
        State {
            name: "hidden"
            PropertyChanges { target: scene; opacity: 0 }
        },
        State {
            name: "shown"
            PropertyChanges { target: scene; opacity: 1 }
        }
    ]

    transitions: Transition {
        from: "hidden"
        to: "shown"

        reversible: true

        animations:
            NumberAnimation {
            target: scene
            property: "opacity"
            duration: 1000
            easing.type: Easing.InOutQuad
        }
    }
}

