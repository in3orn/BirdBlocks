import VPlay 2.0
import QtQuick 2.0

import "scene"

Item {
    id: game

    MenuScene {
        id: menuScene
    }

    state: "menu"

    states: [
        State {
            name: "menu"
            PropertyChanges { target: menuScene; state: "shown"}
            PropertyChanges { target: gameWindow; activeScene: menuScene }
        }
    ]
}

