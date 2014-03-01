import bb.cascades 1.2
Page { 
    id: categoryPage
    property variant chosenItem
    Container {
        ListView {
            dataModel: XmlDataModel {source: "genres.xml"}
            onTriggered: {             
                chosenItem = dataModel.data(indexPath); 
                    //var contentpage = locationDefinition.createObject();
                //nav.push(contentpage); 
                placeSheet.open()  
            }
            listItemComponents: [
                ListItemComponent {
                    type: "header"
                    CustomListItem {
                        dividerVisible: true
                        Label {
                            text: ListItemData.title
                            textStyle {
                                fontSize: FontSize.XXLarge
                                fontWeight: FontWeight.Bold
                                textAlign: TextAlign.Center
                                //color: Color.create ("#000000")
                            }
                        }
                    }
                },
                ListItemComponent {
                    type: "item"
                    CustomListItem {
                        dividerVisible: true
                        highlightAppearance: HighlightAppearance.Frame
                        
                        Container {layout: StackLayout {orientation: LayoutOrientation.LeftToRight}   
                            ImageView {
                                imageSource: ListItemData.path
                            } 
                            Label {
                                text: ListItemData.name
                                multiline: true
                            
                            }    
                        }
                    }
                }   
            ] 
        }
    }  
    attachedObjects: [
        Sheet {id: placeSheet
            Page {
                actions: [
                    ActionItem {//back button
                        imageSource: "asset:///images/park_icon.png"
                        ActionBar.placement: ActionBarPlacement.OnBar
                        onTriggered: {
                            placeSheet.close()
                            categoryPage.opacity=1
                        }
                    }
                ]//actions end
                Container {
                    layout: DockLayout {}
                    Container {layout: StackLayout {}
                        verticalAlignment: VerticalAlignment.Center
                        horizontalAlignment: HorizontalAlignment.Center            
                        Label {
                            text: chosenItem.info
                        }
                    }//inner container end
                }//main container end
            }//page end
        }//sheet end
    ]  
}




