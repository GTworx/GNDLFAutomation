If Not IsObject(application) Then
   Set SapGuiAuto  = GetObject("SAPGUI")
   Set application = SapGuiAuto.GetScriptingEngine
End If
If Not IsObject(connection) Then
   Set connection = application.Children(0)
End If
If Not IsObject(session) Then
   Set session    = connection.Children(0)
End If
If IsObject(WScript) Then
   WScript.ConnectObject session,     "on"
   WScript.ConnectObject application, "on"
End If
session.findById("wnd[0]").maximize
session.findById("wnd[0]/tbar[0]/okcd").text = "ST03N"
session.findById("wnd[0]").sendVKey 0
session.findById("wnd[0]/shellcont/shell/shellcont[1]/shell").selectedNode = "B.999"
session.findById("wnd[0]/shellcont/shell/shellcont[1]/shell").doubleClickNode "B.999"
session.findById("wnd[0]/shellcont/shell/shellcont[1]/shell").expandNode "B.999"
session.findById("wnd[0]/shellcont/shell/shellcont[1]/shell").topNode = "B"
session.findById("wnd[0]/shellcont/shell/shellcont[1]/shell").expandNode "B.999.3"
session.findById("wnd[0]/shellcont/shell/shellcont[1]/shell").selectedNode = "B.999.3.002"
session.findById("wnd[0]/shellcont/shell/shellcont[1]/shell").topNode = "B"
session.findById("wnd[0]/shellcont/shell/shellcont[1]/shell").doubleClickNode "B.999.3.002"
session.findById("wnd[0]/usr/ssubSUBSCREEN_0:SAPWL_ST03N:1100/ssubWL_SUBSCREEN_1:SAPWL_ST03N:1110/tabsG_TABSTRIP/tabpTA04").select
session.findById("wnd[0]/usr/ssubSUBSCREEN_0:SAPWL_ST03N:1100/ssubWL_SUBSCREEN_1:SAPWL_ST03N:1110/tabsG_TABSTRIP/tabpTA04/ssubWL_SUBSCREEN_2:SAPWL_ST03N:1130/cntlALVCONTAINER/shellcont/shell").pressToolbarContextButton "&MB_EXPORT"
session.findById("wnd[0]/usr/ssubSUBSCREEN_0:SAPWL_ST03N:1100/ssubWL_SUBSCREEN_1:SAPWL_ST03N:1110/tabsG_TABSTRIP/tabpTA04/ssubWL_SUBSCREEN_2:SAPWL_ST03N:1130/cntlALVCONTAINER/shellcont/shell").selectContextMenuItem "&XXL"
session.findById("wnd[1]/tbar[0]/btn[20]").press
session.findById("wnd[1]/usr/ctxtDY_PATH").text = "G:\My Drive\_sepet\GITHUB\GNDLFAutomation"
session.findById("wnd[1]/usr/ctxtDY_PATH").setFocus
session.findById("wnd[1]/usr/ctxtDY_PATH").caretPosition = 41
session.findById("wnd[1]/tbar[0]/btn[0]").press
