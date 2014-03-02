import bb.cascades 1.2
import bb.platform 1.0

Page {
    property alias locationTitle: locationTitle
    property alias locationAddress: locationAddress
    property alias locationAdditional_address: locationAdditional_address
    property alias locationPhone: locationPhone
    property alias locationEmail: locationEmail
    property alias locationWebSite: locationWebSite
    property alias locationIndex: locationIndex
    property alias locationDescription: locationDescription
    Container {layout: DockLayout {}
        background: backgroundPaint.imagePaint

        Container {
            Label {
                horizontalAlignment: HorizontalAlignment.Center
                id: locationTitle
                multiline: true
                text: ""
                textStyle {
                    base: SystemDefaults.TextStyles.TitleText
                    fontWeight: FontWeight.Bold
                    fontSize: FontSize.XXLarge
                    textAlign: TextAlign.Center
                
                }
            }
            ScrollView {
                horizontalAlignment: HorizontalAlignment.Center
                verticalAlignment: VerticalAlignment.Top
                Container {layout: StackLayout {orientation: LayoutOrientation.TopToBottom}
                    Divider {}
                    Label {
                        horizontalAlignment: HorizontalAlignment.Center
                        multiline: true
                        text: qsTr("Description") + Retranslate.onLocaleOrLanguageChanged
                        textStyle {
                            base: headerStyle.style
                        }
                    }
                    Label {
                        id: locationDescription
                        horizontalAlignment: HorizontalAlignment.Center
                        multiline: true
                        text: ""
                        textStyle {
                            base: bodyStyle.style
                        }
                    }
                    Divider {}
                    Label {
                        horizontalAlignment: HorizontalAlignment.Center
                        multiline: true
                        text: qsTr("Address") + Retranslate.onLocaleOrLanguageChanged
                        textStyle {
                            base: headerStyle.style
                        }
                    }
                    Label {
                        id: locationAddress
                        horizontalAlignment: HorizontalAlignment.Center
                        multiline: true
                        text: ""
                        textStyle {
                            base: bodyStyle.style
                        }
                    }
                    Button {
                        text: "Map It"
                        horizontalAlignment: HorizontalAlignment.Center
                        onClicked: {
                            locationInvokerID.searchText=locationAddress.text+" Toronto"+" Ontario"
                            locationInvokerID.go();
                        }
                    }
                    Divider {}
                    Label {
                        horizontalAlignment: HorizontalAlignment.Center
                        multiline: true
                        text: qsTr("Additional Address Info") + Retranslate.onLocaleOrLanguageChanged
                        textStyle {
                            base: headerStyle.style
                        }
                    }
                    Label {
                        id: locationAdditional_address
                        horizontalAlignment: HorizontalAlignment.Center
                        multiline: true
                        text: ""
                        textStyle {
                            base: bodyStyle.style
                        }
                    }
                    Divider {}
                    Label {
                        horizontalAlignment: HorizontalAlignment.Center
                        multiline: true
                        text: qsTr("Phone Number") + Retranslate.onLocaleOrLanguageChanged
                        textStyle {
                            base: headerStyle.style
                        }
                    }
                    Label {
                        id: locationPhone
                        horizontalAlignment: HorizontalAlignment.Center
                        multiline: true
                        text: ""
                        textStyle {
                            base: bodyStyle.style
                        }
                    }
                    Divider {}
                    Label {
                        horizontalAlignment: HorizontalAlignment.Center
                        multiline: true
                        text: qsTr("Email") + Retranslate.onLocaleOrLanguageChanged
                        textStyle {
                            base: headerStyle.style
                        }
                    }
                    Label {
                        id: locationEmail
                        horizontalAlignment: HorizontalAlignment.Center
                        multiline: true
                        text: ""
                        textStyle {
                            base: bodyStyle.style
                        }
                    }
                    Divider {}
                    Label {
                        horizontalAlignment: HorizontalAlignment.Center
                        multiline: true
                        text: qsTr("Website") + Retranslate.onLocaleOrLanguageChanged
                        textStyle {
                            base: headerStyle.style
                        }
                    }
                    Label {
                        id: locationWebSite
                        horizontalAlignment: HorizontalAlignment.Center
                        multiline: true
                        text: ""
                        textStyle {
                            base: bodyStyle.style
                        }
                    }
                    Label {
                        id: locationIndex
                        horizontalAlignment: HorizontalAlignment.Center
                        multiline: true
                        text: ""
                        textStyle {
                            base: bodyStyle.style
                        }
                    }
                }
            }
        }
        
        attachedObjects: [        
            LocationMapInvoker {
                id: locationInvokerID
                
                // This example shows how to bind properties to pre-defined values.
                // One can bind properties to values coming from other widgets 
                // within this QML page (e.g. text field's input)
                
                //centerLatitude :  45.416667    // Ottawa's latitude
                //centerLongitude : -75.7        // Ottawa's longitude
                //altitude : 200
                
                // Request for a given POI (point of interest) to be shown 
                // on the map also.
                
                //locationLatitude : 45.4555
                //locationLongitude : -75.68
                //locationName : "My Favorite location"
                // 'geocodeLocationEnabled' boolean property is not explicitly set, 
                // so it will be false.
                
                // Also request for a search around the center of map 
                // (as part of setting properties available on superclass MapInvoker)
                searchText : ""
                //searchLatitude : 45.416667
                //searchLongitude : -75.7
                // 'searchMode' property is not explicitly set, 
                // so this will be a Radial search
            },
            TextStyleDefinition
            {
                id: headerStyle
                base: SystemDefaults.TextStyles.BodyText            
                fontWeight: FontWeight.Bold
                fontSize: FontSize.XLarge
                color: Color.Black
            },
            TextStyleDefinition
            {
                id: bodyStyle
                base: SystemDefaults.TextStyles.BodyText            
                fontWeight: FontWeight.Normal
                fontSize: FontSize.Medium
                color: Color.Black
                
            },
            ImagePaintDefinition {
                id: backgroundPaint		
                imageSource: "asset:///images/listBg.png"
            }
        ]
    }
}