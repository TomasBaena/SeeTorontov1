import bb.cascades 1.2

    Page {         
        Container {
            ListView {
                dataModel: XmlDataModel {source: "genres.xml"}
                onTriggered: {             
                    var chosenItem = dataModel.data(indexPath);
                    captureInfoPage.captureInfoLabel.text=chosenItem.name
                    if(chosenItem.name=="Attractions"){
                        captureInfoPage.captureInfoLabelGenre.text="AttractionsLocations.xml"
                        nav.push(locationsPage); 
                    }
                    else if (chosenItem.name=="Beaches"){
                        captureInfoPage.captureInfoLabelGenre.text="BeachesLocations.xml"
                        nav.push(locationsPage); 
                    }
                
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
    }




