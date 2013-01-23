import QtQuick 2.0
import Ubuntu.Components 0.1

UbuntuContainer {
    id: main
    width: units.gu(100)
    height: units.gu(100)

    property variant layouts_file: {
        0: "themes/DesktopLayout.qml",
        1: "themes/VerticalLayout.qml",
        2: "themes/HorizontalLayout.qml",
    }

    Component.onCompleted: {
        main.orientation = main.layout.desktop;
    }
}
