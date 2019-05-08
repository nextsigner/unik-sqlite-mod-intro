import QtQuick 2.0
import QtQuick.Controls 1.2
import QtWebEngine 1.4
import Qt.labs.settings 1.0
import  "../../../"
Item {
    id: r
    width: app.an
    height: app.al
    property string uSilPlayed: ''
    property int uYContent: 0
    property bool showFailTools: false
    property string sectionName: 'intro'


    Settings{
        id: settingsMod002
        category: app.moduleName+'-'+r.sectionName
        property string uText: ''
    }
    Column{
        width: r.width-app.fs
        anchors.centerIn: r
        spacing: app.fs*0.5
        Text{
            text: '<b>Unik QdmSqlite</b>'
            font.pixelSize: app.fs*3
            color: app.c2
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Text{
            text: 'by @nextsigner'
            font.pixelSize: app.fs
            color: app.c2
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Text{
            text: 'E-Mail: nextsigner@gmail.com Whatsapp: +54 11 3802 4370'
            font.pixelSize: app.fs*0.5
            color: app.c2
            anchors.horizontalCenter: parent.horizontalCenter
        }
        Item{width: 1; height: app.fs*3}
        Row{
            anchors.horizontalCenter: parent.horizontalCenter
            spacing: app.fs
            Repeater{
                model: ['Cambiar Color', 'Ajustar Volumen']
                BotonUX{
                    text: modelData
                    speed: 500
                    fs: app.fs*0.75
                    onClick: {
                        xC.visible=true
                    }
                }
            }
        }
        BotonUX{
            id: botPlay
            text: 'Continuar '
            speed: 100
            clip: false
            anchors.horizontalCenter: parent.horizontalCenter
            onClick: {
                if(app.umod===0&&app.us===0){
                    app.mod=0
                    app.s=1
                }else{
                    app.mod=app.umod
                    app.s=app.us
                }
                app.prepMod()
            }
        }
    }
    Component.onCompleted: {
        controles.visible=false
    }
}
