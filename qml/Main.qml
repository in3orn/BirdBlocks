import VPlay 2.0
import QtQuick 2.0

import "scene"

GameWindow {
    id: gameWindow

    width: 320
    height: 480

    activeScene: splashScene

    //licenseKey: ""

    Loader {
        id: loader
        onLoaded: if(item) splashScene.state = "hidden"
        onProgressChanged: splashScene.progress = progress
    }

    SplashScene {
        id: splashScene
        state: "shown"
    }

    Timer {
        id: lateInitializer
        interval: 1000
        onTriggered: loader.source = "Game.qml"
    }

    Component.onCompleted: lateInitializer.start()
}

