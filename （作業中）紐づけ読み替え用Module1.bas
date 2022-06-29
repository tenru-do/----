Attribute VB_Name = "Module1"
Sub Macro3()
Attribute Macro3.VB_ProcData.VB_Invoke_Func = " \n14"
'
' Macro3 Macro
'



    Dim i           '// ループカウンタ
    Dim s           '// セル値
    
    '// E3セルをアクティブ
    
    Sheets("2020").Select
    Range("E3").Select
    
    '// セル値を取得
    s = ActiveCell.Offset(i, 0).Value
    
    '// ループカウンタを初期化
    i = 0
    
    '// 空セルまでループ
     
    
    
    
    Do
        
       

        
        
'まずスタート、開始位置指定して、右のプランコード達をコピー
    
    'スタート位置から右限界までコピー
    
   
    Range(Selection, Selection.End(xlToRight)).Select
    Application.CutCopyMode = False
    Selection.Copy
      
    
'作業場シートへ移動し、プランコードを最終行から90度変換して貼り付け。
    
    Sheets("作業場1").Select
    Range("A1").Select
    Selection.End(xlDown).Select
    '1行下がる
    ActiveCell.Offset(1, 0).Activate
    
'90度変換して貼り付け
    Selection.PasteSpecial Paste:=xlPasteAll, Operation:=xlNone, SkipBlanks:= _
        False, Transpose:=True
    

'次の工程、次の行に移って作業続行。


    
    Sheets("2020").Select
    
    Range(Selection, Selection.End(xlToRight)).Select
    Application.CutCopyMode = False
    Selection.Copy
     '1行下がる
    ActiveCell.Offset(1, 0).Activate
    
    
    '以降繰り返す。
    
            
        

        '// セル値が未設定の場合
        If s = "" Then
            '// ループを抜ける
            Exit Do
        End If
        
        '// ループカウンタを加算
        i = i + 1
    Loop

    
    
    
    
    
End Sub
