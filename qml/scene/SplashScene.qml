import VPlay 2.0
import QtQuick 2.0

import "../misc"

KrkScene {
    id:scene

    property real progress: 0

    Rectangle {
        id: background
        anchors.fill: gameWindowAnchorItem
        color: "white"
    }

    MultiResolutionImage {
        id: logo
        source: "../../assets/img/splash/logo.png"

        anchors {
            horizontalCenter: parent.horizontalCenter
            top: parent.top
            topMargin: parent.height/3 - height/2
        }
    }

    KrkProgressBar {
        id: progressBar
        progress: scene.progress
    }
}

