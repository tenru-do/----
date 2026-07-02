Attribute VB_Name = "Module1"
'指定フォルダー内のExcelファイルをすべて開くサンプルマクロ
'以下のマクロを実行すると「C:\tmp」フォルダーにあるExcelファイルをすべて開くことができます。

Sub 指定フォルダーのExcelファイルを全て開く()
  Const DIR_PATH = "C:\Users\HEAD0103\Downloads\test"
  Dim fl_name As String
  fl_name = Dir(DIR_PATH & "\*.xls*")
  If fl_name = "" Then
    MsgBox "Excelファイルがありません。"
    Exit Sub
  End If

  Do
    Workbooks.Open Filename:=DIR_PATH & "\" & fl_name
    fl_name = Dir
  Loop Until fl_name = ""
End Sub
