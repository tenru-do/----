Attribute VB_Name = "Module11"
Sub DNPNG抽出()
Attribute DNPNG抽出.VB_ProcData.VB_Invoke_Func = "d\n14"
'
' DNPNG抽出 Macro
'
' Keyboard Shortcut: Ctrl+d
'
    Sheets("TN_Schedule").Select
    ActiveSheet.Range("$B$4:$M$3000").AutoFilter Field:=3, Criteria1:="#N/A"
    Range("B4").Select
    Range(Selection, Selection.End(xlDown)).Select
    Selection.Copy
    Windows("エラープランコード.xlsx").Activate
    Range("A1").Select
    Selection.End(xlDown).Select
    ActiveCell.Offset(2, 0).Activate
    ActiveSheet.Paste
    Selection.End(xlDown).Select
End Sub
