import bb.cascades 1.2
NavigationPane {
    id: nav
    Menu.definition: MenuDefinition {//swipe down menu
        helpAction: HelpActionItem {//help option
            onTriggered: {
                nav.push(helpPage);
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
                        nav.push(searchPage);
                    }
                } 
                Button {
                    id: categoryButton
                    text: qsTr("Categories") + Retranslate.onLocaleOrLanguageChanged
                    onClicked: {
                        nav.push(categoryPage);
                    }
                }
                Button {
                    id: findButton
                    text: qsTr("Find Something to do") + Retranslate.onLocaleOrLanguageChanged
                    onClicked: {
                       nav.push(findPage);
                    }
                }       
            }
        }
    }
    
    attachedObjects: [      
        CaptureInfo{
            id: captureInfoPage
        },
        Locations {
            id: locationsPage
        },
        Search {
            id: searchPage
        },
        Category {
            id: categoryPage
        },
       Find {
            id: findPage
        },
        Help {
            id: helpPage
        },        
        LocationInfo {
            id: locationInfoPage
        }
    ]
    

}