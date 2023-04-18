YesNoPoll("Vamos fazer às leituras mesmo que nem todos possam participar?")

Func Webhook($Message)
    Local $Url = ""
    Local $oHTTP = ObjCreate("winhttp.winhttprequest.5.1")
    Local $Packet = '{"content": "' & $Message & '"}'
    $oHTTP.open('POST',$Url)
    $oHTTP.setRequestHeader("Content-Type","application/json")
	$oHTTP.send($Packet)
	ConsoleWrite("#####################")
    ConsoleWrite($oHTTP.ResponseText)
EndFunc

Func YesNoPoll($Message)
	Webhook($Message & "\n\n✅ para sim" & "    ❌ para não")
EndFunc