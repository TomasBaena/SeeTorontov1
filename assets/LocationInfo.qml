import bb.cascades 1.2

Page {
    property alias locationTitle: locationTitle
    property alias locationAddress: locationAddress
    property alias locationAdditional_address: locationAdditional_address
    property alias locationPhone: locationPhone
    property alias locationEmail: locationEmail
    property alias locationWebSite: locationWebSite
    property alias locationDescription: locationDescription
    ScrollView {
        Container {layout: StackLayout {orientation: LayoutOrientation.TopToBottom}
            Label {
                id: locationTitle
                multiline: true
                text: ""
            }
            Label {
                id: locationAddress
                multiline: true
                text: ""
            }
            Label {
                id: locationAdditional_address
                multiline: true
                text: ""
            }
            Label {
                id: locationPhone
                multiline: true
                text: ""
            }
            Label {
                id: locationEmail
                multiline: true
                text: ""
            }
            Label {
                id: locationWebSite
                multiline: true
                text: ""
            }
            Label {
                id: locationDescription
                multiline: true
                text: ""
            }
        }
    }
}
