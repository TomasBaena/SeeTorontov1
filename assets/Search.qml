import bb.cascades 1.2

Page {
    Container {layout: DockLayout {}
        background: backgroundPaint.imagePaint
        Container {
            verticalAlignment: VerticalAlignment.Top
            background: backgroundPaint.searchPaint
            Label {
                text: "SEARCH PAGE"
                horizontalAlignment: HorizontalAlignment.Center
            }
            TextField {
                id: userInputSearch
                hintText: "Enter Search..."
            }
            Button {
                id: searchButton
                horizontalAlignment: HorizontalAlignment.Center
                text: "Search"
                onClicked: {
                    notFoundLabel.text = "Sorry item not found :("
                    var i = 0
                    if (userInputSearch.text.toLowerCase()==dataModel.data([i]).title.toLowerCase()){
                        var chosenItem = dataModel.data([i])
                        locationInfoPage.locationTitle.text = chosenItem.title
                        locationInfoPage.locationAddress.text = chosenItem.address
                        locationInfoPage.locationAdditional_address.text = chosenItem.additional_address
                        locationInfoPage.locationPhone.text = chosenItem.phone
                        locationInfoPage.locationEmail.text = chosenItem.email
                        locationInfoPage.locationWebSite.text = chosenItem.website
                        locationInfoPage.locationDescription.text = chosenItem.description
                        notFoundLabel.text = ""
                        nav.push(locationInfoPage) 
                    
                    }
                    while (userInputSearch.text.toLowerCase()!=dataModel.data([i]).title.toLowerCase() && i < 170){
                        i++
                        if (userInputSearch.text.toLowerCase()==dataModel.data([i]).title.toLowerCase()){
                            var chosenItem = dataModel.data([i])
                            locationInfoPage.locationTitle.text = chosenItem.title
                            locationInfoPage.locationAddress.text = chosenItem.address
                            locationInfoPage.locationAdditional_address.text = chosenItem.additional_address
                            locationInfoPage.locationPhone.text = chosenItem.phone
                            locationInfoPage.locationEmail.text = chosenItem.email
                            locationInfoPage.locationWebSite.text = chosenItem.website
                            locationInfoPage.locationDescription.text = chosenItem.description
                            notFoundLabel.text = ""
                            nav.push(locationInfoPage) 
                        }
                        robFordAnimation.play() 
                    }
                                         
                }
            }
            Label {
                id: notFoundLabel
                text: ""
            }
        }
        ImageView {
            verticalAlignment: VerticalAlignment.Bottom
            horizontalAlignment: HorizontalAlignment.Left
            imageSource: "asset:///images/robfordSearch.png"
            scaleX: 0
            scaleY: 0
            animations: [
                SequentialAnimation {
                    id: robFordAnimation
                    animations: [
                        ScaleTransition {
                            toX: 1
                            toY: 1
                            duration: 200
                        },
                        ScaleTransition {
                            toX: 0
                            toY: 0
                            duration: 150
                        },
                        ScaleTransition {
                            toX: 1
                            toY: 1
                            duration: 100
                        }
                    ]
                }
            ]
        }
        attachedObjects: [
            ImagePaintDefinition {
                id: backgroundPaint		
                imageSource: "asset:///images/listBg.png"
            },
            ImagePaintDefinition {
                id: searchPaint		
                imageSource: "asset:///images/searchContainer.png"
            },
            XmlDataModel {
                id: dataModel
                source: "AllLocations.xml"
            }
        ]
    }
}
