import bb.cascades 1.2
NavigationPane {
    id: nav
    Menu.definition: MenuDefinition {//swipe down menu
        helpAction: HelpActionItem {//help option
            onTriggered: {
                var contentpage = helpDefinition.createObject();
                nav.push(contentpage);
            }
        }
    }
    Page {
        Container {layout: DockLayout {}
        
            Label {
                
                verticalAlignment: VerticalAlignment.Top
                horizontalAlignment: HorizontalAlignment.Center
                text: "Yolo zwag app"
            }
            Container {layout: StackLayout {orientation: LayoutOrientation.TopToBottom}
                verticalAlignment: VerticalAlignment.Center
                horizontalAlignment: HorizontalAlignment.Center
                Button {
                    id: searchButton
                    text: qsTr("Search") + Retranslate.onLocaleOrLanguageChanged
                    onClicked: {
                        var contentpage = searchDefinition.createObject();
                        nav.push(contentpage);
                    }
                } 
                Button {
                    id: categoryButton
                    text: qsTr("Categories") + Retranslate.onLocaleOrLanguageChanged
                    onClicked: {
                        var contentpage = categoryDefinition.createObject();
                        nav.push(contentpage);
                    }
                }
                Button {
                    id: findButton
                    text: qsTr("Find Something to do") + Retranslate.onLocaleOrLanguageChanged
                    onClicked: {
                        var contentpage = findDefinition.createObject();
                        nav.push(contentpage);
                    }
                }       
            }
        }
    }
    attachedObjects: [
        ComponentDefinition {
            id: searchDefinition
            source: "Search.qml"
        },
        ComponentDefinition {
            id: categoryDefinition
            source: "Category.qml"
        },
        ComponentDefinition {
            id: findDefinition
            source: "Find.qml"
        },
        ComponentDefinition {
            id: helpDefinition
            source: "Help.qml"
        }
    ]
    onPopTransitionEnded: {
        page.destroy();
    }
}