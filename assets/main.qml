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
            background: backgroundPaint.imagePaint
            Container {layout: StackLayout {orientation: LayoutOrientation.TopToBottom}
                verticalAlignment: VerticalAlignment.Center
                horizontalAlignment: HorizontalAlignment.Left
                leftPadding: 50
                Button {
                    id: searchButton
                    preferredHeight: maxHeight
                    text: qsTr("Search") + Retranslate.onLocaleOrLanguageChanged
                    onClicked: {
                        nav.push(searchPage);
                    }
                } 
                Button {
                    id: categoryButton
                    preferredHeight: maxHeight
                    text: qsTr("Categories") + Retranslate.onLocaleOrLanguageChanged
                    onClicked: {
                        nav.push(categoryPage);
                    }
                }
                Button {
                    id: findButton
                    preferredHeight: maxHeight
                    text: qsTr("Find Something to do") + Retranslate.onLocaleOrLanguageChanged
                    onClicked: {
                        nav.push(findPage);
                    }
                }       
            }
        }
    }
    
    attachedObjects: [  
        
        ImagePaintDefinition {
            id: backgroundPaint		
            imageSource: "asset:///images/mainBg.png"
        },    
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
