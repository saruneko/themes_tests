import QtQuick 2.0
import "themes" as Themes

Rectangle {
    id: container
    property variant widgets: undefined
    property list<Item> __layouts: [
        Themes.VerticalLayout {},
        Themes.HorizontalLayout {},
        Themes.DesktopLayout {}
    ]
    property variant __layout_name: {
        0: "VERTICAL",
        1: "HORIZONTAL",
        2: "DESKTOP",
    }
    property alias layout: layout
    property variant orientation: undefined

    QtObject {
        id: layout
        property int vertical: 0
        property int horizontal: 1
        property int desktop: 2
    }

    onOrientationChanged: {
        if(orientation != undefined && __layout_name != undefined){
            state = __layout_name[orientation];
        }else{
            state = "";
        }
    }

    states: [
         State {
             name: "DESKTOP"
             PropertyChanges { target: container; color: "#8eae7e"}
             PropertyChanges { target: widgets["menu"]; parent: __layouts[orientation].container; visible: true; height: container.height}
             PropertyChanges { target: widgets["list"]; parent: __layouts[orientation].container;
                 width: (main.width / 2) - widgets["menu"].width; height: container.height; visible: true
             }
             PropertyChanges { target: widgets["preview"]; parent: __layouts[orientation].container;
                 width: (main.width / 2) - widgets["menu"].width; visible: true; height: container.height
             }
             PropertyChanges { target: __layouts[orientation]; visible: true; parent: container}
             PropertyChanges { target: __layouts[1]; visible: false}
             PropertyChanges { target: __layouts[0]; visible: false}
         },
         State {
             name: "VERTICAL"
             PropertyChanges { target: container; color: "#bf8282"}
             PropertyChanges { target: widgets["menu"]; parent: __layouts[orientation].container; visible: true;
                 height: units.gu(18); width: container.width}
             PropertyChanges { target: widgets["list"]; parent: __layouts[orientation].container; visible: false;}
             PropertyChanges { target: widgets["preview"]; parent: __layouts[orientation].container; visible: true; height: units.gu(20)}
             PropertyChanges { target: __layouts[orientation]; visible: true; parent: container}
             PropertyChanges { target: __layouts[1]; visible: false}
             PropertyChanges { target: __layouts[2]; visible: false}
         },
        State {
            name: "HORIZONTAL"
            PropertyChanges { target: container; color: "#9aa6d0"}
            PropertyChanges { target: widgets["list"]; parent: __layouts[orientation].container;
                width: main.width - widgets["menu"].width - units.gu(2); visible: true; height: container.height
            }
            PropertyChanges { target: widgets["menu"]; parent: __layouts[orientation].container; visible: true; height: container.height}
            PropertyChanges { target: widgets["preview"]; parent: __layouts[orientation].container; visible: false; height: container.height}
            PropertyChanges { target: __layouts[orientation]; visible: true; parent: container}
            PropertyChanges { target: __layouts[2]; visible: false}
            PropertyChanges { target: __layouts[0]; visible: false}
        }
     ]


    Component.onCompleted: {
        var temp_widgets = {};
        for(var i=0; i < children.length; i++){
            if(children[i].objectName){
                temp_widgets[children[i].objectName] = children[i];
            }
        }
        widgets = temp_widgets;
    }
}
