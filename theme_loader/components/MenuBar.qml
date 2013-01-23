import QtQuick 2.0
import Ubuntu.Components 0.1
import ".." as Main

Main.UbuntuContainer {
    id: menu

    property variant layouts_file: {
        0: "components/MenuBarHorizontal.qml",
        1: "components/MenuBarVertical.qml",
        2: "components/MenuBarHorizontal.qml",
    }

    Component.onCompleted: {
        menu.orientation = main.orientation;
    }
}
