function init() 
    for x = 0 to 4
        createRectangle(x)
        partId = "chargPart" + (x+1).toStr()
        ' ?partId
     '   animAlpha(partId)
    end for
    ' createRectangle(0)
    animAlpha()
    'showDialog()
    m.top.setFocus(true)
    m.myLabel = m.top.findNode("myLabel")

    ' set the font size
    m.myLabel.font.size=92

    ' set the color to light blue
    m.myLabel.color = "0xDDDDDD"

    m.myLabel2 = m.top.findNode("myLabel2")

    ' set the font size
    m.myLabel2.font.size=56

    ' set the color to light blue
    m.myLabel2.color = "0x00ff00"

end function

sub showDialog()
    dialog = createObject("RoSGNode","Dialog")  
    dialog.backgroundUri = "pkg:/images/ch-icon-hd.png"  
    dialog.title = "Example Dialog" 
    dialog.optionsDialog = true
    dialog.message = "Press * To Dismiss"
    m.top.dialog = dialog
    '? "Here"
end sub

sub  createRectangle(offset as Integer)
    rectattribs = CreateObject("roAssociativeArray")
    rectattribs.id = Substitute("chargPart{0}",(offset+1).toStr())
    rectattribs.color = "0xffffff00"
    rectattribs.width = "120"
    rectattribs.height = "320"
    widthPart = 140 * offset + 5
    offsetx = widthPart + 15
    'cordinates = Substitute("[{0}, 20]", offsetx.toStr())
    'offset$ = offset.ToStr()
    '? offsetx
    'rectattribs.translation = cordinates
    rectattribs.translation = [offsetx,20]
    '? type(rectattribs.translation)
    '? rectattribs.translation
    m.parentRect = m.top.findNode("ChargingParts")
    m.chargePart = m.parentRect.createChild("Rectangle")
    m.chargePart.id = rectattribs.id
    ' ? m.chargePart.id
    m.chargePart.color = rectattribs.color
    m.chargePart.width = rectattribs.width
    m.chargePart.height = rectattribs.height
    m.chargePart.translation = rectattribs.translation
end sub

'sub animAlpha(rectId as String)
sub animAlpha()
    m.examplesequentialanimation = m.top.findNode("exampleSequentialAnimation")
    m.exampleGroup = m.top.findNode("ChargingParts")
    ' m.exampleColorInter = m.exampleGroup.findNode("alphaChange")
    ' colorStr = rectId + ".color"
    ' '? colorStr
    ' m.exampleColorInter.fieldToInterp = colorStr
    ' ?m.exampleColorInter.fieldToInterp
    m.examplesequentialanimation.repeat = true
    m.examplesequentialanimation.control = "start"
    ' xmlCFI = m.top.findNode("alphaChange")
    ' ? xmlCFI
    ' Sleep(500)
end sub