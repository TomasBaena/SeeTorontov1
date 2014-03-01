import bb.cascades 1.2
Page { 
    Container {            
        ListView {
            dataModel: XmlDataModel {source: captureInfoPage.captureInfoLabelGenre.text}
            listItemComponents: [
                ListItemComponent {
                    type: "item"
                    CustomListItem {
                        dividerVisible: true
                        highlightAppearance: HighlightAppearance.Frame
                        
                        Container {layout: StackLayout {orientation: LayoutOrientation.LeftToRight}   
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



