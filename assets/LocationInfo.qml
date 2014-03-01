import bb.cascades 1.2

Page {
    property alias locationTitle: locationTitle
    property alias locationAddress: locationAddress
    property alias locationAdditional_address: locationAdditional_address
    property alias locationPhone: locationPhone
    property alias locationEmail: locationEmail
    property alias locationWebSite: locationWebSite
    property alias locationDescription: locationDescription
    Container {
        Label {
            horizontalAlignment: HorizontalAlignment.Center
            id: locationTitle
            multiline: true
            text: ""
        }
        ScrollView {
            horizontalAlignment: HorizontalAlignment.Center
            verticalAlignment: VerticalAlignment.Top
            Container {layout: StackLayout {orientation: LayoutOrientation.TopToBottom}
                Divider {}
                Label {
                    horizontalAlignment: HorizontalAlignment.Center
                    multiline: true
                    text: qsTr("Address") + Retranslate.onLocaleOrLanguageChanged
                    textStyle {
                        base: headerStyle.style
                    }
                }
                Divider {}
                Label {
                    id: locationAddress
                    horizontalAlignment: HorizontalAlignment.Center
                    multiline: true
                    text: ""
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
                Divider {}
                Label {
                    id: locationAdditional_address
                    horizontalAlignment: HorizontalAlignment.Center
                    multiline: true
                    text: ""
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
                Divider {}
                Label {
                    id: locationPhone
                    horizontalAlignment: HorizontalAlignment.Center
                    multiline: true
                    text: ""
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
                Divider {}
                Label {
                    id: locationEmail
                    horizontalAlignment: HorizontalAlignment.Center
                    multiline: true
                    text: ""
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
                Divider {}
                Label {
                    id: locationWebSite
                    horizontalAlignment: HorizontalAlignment.Center
                    multiline: true
                    text: ""
                }/*
                "<html><head><style>
                p {font-style:italic;}
                a:link {font-weight:bold;color:red}
                </style></head>
                <p>This text uses an italic style.</p>
                <p><a href="+"sdfsdf+">This is a hyperlink.
                </a></p>
                </html>"
                */
                Divider {}
                Label {
                    horizontalAlignment: HorizontalAlignment.Center
                    multiline: true
                    text: qsTr("Description") + Retranslate.onLocaleOrLanguageChanged
                    textStyle {
                        base: headerStyle.style
                    }
                }
                Divider {}
                Label {
                    id: locationDescription
                    horizontalAlignment: HorizontalAlignment.Center
                    multiline: true
                    text: ""
                }
            }
        }
    }
    attachedObjects: [
        TextStyleDefinition
        {
            id: headerStyle
            base: SystemDefaults.TextStyles.BodyText
            color: Color.Green
            
            fontWeight: FontWeight.Bold
            fontSize: FontSize.Small
        }
    ]
}