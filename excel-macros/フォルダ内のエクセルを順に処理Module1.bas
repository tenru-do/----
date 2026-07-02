Attribute VB_Name = "Module1"
Sub フォルダ内ファイルを順に処理モジュール()

    Dim path, fso, file, files
    path = "C:/Users/xxxxxx/フォルダ名/"
    'path = ThisWorkbook.Path & "/フォルダ名/"  '相対パスの場合
    Set fso = CreateObject("Scripting.FileSystemObject")
    Set files = fso.GetFolder(path).files

    'フォルダ内の全ファイルについて処理
    For Each file In files

        'ファイルを開いてブックとして取得
        Dim wb As Workbook
        Set wb = Workbooks.Open(file)

        'ブックに対する処理

        '保存せずに閉じる
        Call wb.Close(SaveChanges:=False)

    Next file

End Sub
