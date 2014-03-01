import bb.cascades 1.2
Page { 
    Container {          
        ListView {
            dataModel: XmlDataModel {source: captureInfoPage.captureInfoLabelGenre.text}
            onTriggered: {             
                var chosenItem = dataModel.data(indexPath);
                locationInfoPage.locationTitle.text = chosenItem.title
                locationInfoPage.locationAddress.text = chosenItem.address
                locationInfoPage.locationAdditional_address.text = chosenItem.additional_address
                locationInfoPage.locationPhone.text = chosenItem.phone
                locationInfoPage.locationEmail.text = chosenItem.email
                locationInfoPage.locationWebSite.text = chosenItem.website
                locationInfoPage.locationDescription.text = chosenItem.description
                nav.push(locationInfoPage)
            }
            listItemComponents: [
                ListItemComponent {
                    type: "item"
                    CustomListItem {
                        dividerVisible: true
                        highlightAppearance: HighlightAppearance.Frame
                        Container {layout: StackLayout {orientation: LayoutOrientation.LeftToRight}   
                            Label {
                                text: ListItemData.title
                                multiline: true
                            }    
                        }
                    }
                }   
            ] 
        }
    }  
}



