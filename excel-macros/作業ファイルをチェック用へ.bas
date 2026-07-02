Attribute VB_Name = "Module1"
Sub Macro2()
Attribute Macro2.VB_ProcData.VB_Invoke_Func = " \n14"
'
' しょうにんのすけ作業ファイルを食べ残しチェック用に変換
'
'
    Cells.Select
    Selection.RowHeight = 15
    Columns("A:G").Select
    Selection.ColumnWidth = 4
    
    Columns("F:F").Select
    Selection.Font.Bold = True
    
    Range("H2").Select
    ActiveWindow.FreezePanes = True
    
    Rows("1:1").Select
    Selection.AutoFilter
    ActiveWindow.SmallScroll ToRight:=17
    
    Columns("AF:AH").Select
    Selection.ColumnWidth = 4
    ActiveSheet.Range("$A:$AH").AutoFilter Field:=34, Criteria1:="<>"
    Range("A2").Select
    
    
End Sub
