import QtQuick 2.0
import QtQuick.Controls 1.1
import QtQuick.Layouts 1.1
import QtQuick.Controls.Styles 1.1

import Neuronify 1.0

import ".."
import "../controls"

Column {
    signal deleteClicked

    property NeuronEngine engine: null

    width: parent ? parent.width : 100
    spacing: 10

    Text {
        text: engine.voltage.toFixed(0) + " mV"
        anchors.right: parent.right
    }
    
        Text {
            text: "Label:"
        }
        TextField {
            text: ""
            onAccepted: {
                label = text
            }
        }


    BoundSlider {
        target: engine
        property: "restingPotential"
        text: "Resting potential"
        unit: "mV"
        minimumValue: -100
        maximumValue: 50
    }

    BoundSlider {
        target: engine
        property: "threshold"
        text: "Firing threshold"
        minimumValue: -50
        maximumValue: 50
        unit: "mV"
    }

    FireOutputControl {
        target: engine
    }
    

   

}
