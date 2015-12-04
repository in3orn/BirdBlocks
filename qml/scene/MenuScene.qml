import VPlay 2.0
import QtQuick 2.0

KrkScene {
    id: scene

    Repeater {
        model: 10000

        Rectangle {
            id: rect

            width: 50
            height: 50

            color: "red"

            anchors.centerIn: parent

            Component.onCompleted: {
                for(var i = 0; i < 100000; i++) {
                    var k = i * 10;
                    var l = k / 17;
                    var m = l * k;
                }
            }
        }
    }
}

