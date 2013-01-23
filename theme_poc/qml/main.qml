import QtQuick 2.0
import Ubuntu.Components 0.1


UbuntuContainer {
    id: main
    width: units.gu(100)
    height: units.gu(100)
    color: "blue"
//    orientation: layout.desktop

    property alias menuBar: menuBar

    MenuBar {
        id: menuBar
        objectName: "menu"
    }
    MailList {
        objectName: "list"
    }
    PreviewMail {
        objectName: "preview"
    }

    Component.onCompleted: {
        main.orientation = main.layout.desktop;
    }
}
