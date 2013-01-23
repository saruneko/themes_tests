import QtQuick 2.0
import "themes" as Themes

Rectangle {
    id: container
    property alias layout: layout
    property variant orientation: undefined

    QtObject {
        id: layout
        property int desktop: 0
        property int vertical: 1
        property int horizontal: 2
    }

    Loader {
        id: layoutLoader
        anchors.fill: parent
    }

    onOrientationChanged: {
        if(orientation != undefined && layouts_file != undefined){
            layoutLoader.source = layouts_file[orientation];
        }
    }

}
