Attribute VB_Name = "Module3"


' イントラDJ★リスト準備()
'

'以下必要行へ貼り付け
    ActiveWindow.SmallScroll Down:=-12
    Range("BT3").Select
    Range(Selection, Selection.End(xlDown)).Select
    Application.CutCopyMode = False
    Selection.Copy
    Sheets("イントラ用DJ★リスト").Select
    Range("K3").Select
    ActiveSheet.Paste
    Sheets("素材一覧").Select

    Range("R3:S3").Select
    Range(Selection, Selection.End(xlDown)).Select
    Application.CutCopyMode = False
    Selection.Copy
    Sheets("イントラ用DJ★リスト").Select
    Range("L3").Select
    ActiveSheet.Paste
    Sheets("素材一覧").Select

    Range("B2:K2").Select
    Range(Selection, Selection.End(xlDown)).Select
    Application.CutCopyMode = False
    Selection.Copy
    Sheets("イントラ用DJ★リスト").Select
    Range("A2").Select
    ActiveSheet.Paste
    Sheets("素材一覧").Select

    Sheets("素材一覧").Select
    ActiveWindow.SmallScroll Down:=-6
    Range("U3:V3").Select
    Range(Selection, Selection.End(xlDown)).Select
    Application.CutCopyMode = False
    Selection.Copy
    Sheets("イントラ用DJ★リスト").Select
    Range("N3").Select
    ActiveSheet.Paste
    Sheets("素材一覧").Select

    Range("AG3:AH3").Select
    Range(Selection, Selection.End(xlDown)).Select
    Application.CutCopyMode = False
    Selection.Copy
    Sheets("イントラ用DJ★リスト").Select
    Range("P3").Select
    ActiveSheet.Paste
    ActiveWindow.ScrollColumn = 2
    Sheets("素材一覧").Select

    Range("BG3").Select
    Range(Selection, Selection.End(xlDown)).Select
    Application.CutCopyMode = False
    Selection.Copy
    Sheets("イントラ用DJ★リスト").Select
    Range("T3").Select
    ActiveSheet.Paste
    Sheets("素材一覧").Select

    Range("BU3").Select
    Range(Selection, Selection.End(xlDown)).Select
    Range(Selection, ActiveCell.SpecialCells(xlLastCell)).Select
    Range("BU3:BU88781").Select
    Application.CutCopyMode = False
    Selection.Copy
    Sheets("イントラ用DJ★リスト").Select
    Range("U3").Select
    ActiveSheet.Paste
    Sheets("素材一覧").Select

    Range("O3").Select
    Range(Selection, Selection.End(xlDown)).Select
    Application.CutCopyMode = False
    Selection.Copy
    Sheets("イントラ用DJ★リスト").Select
    Range("V3").Select
    ActiveSheet.Paste
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
    Sheets("素材一覧").Select

    Range("AY3").Select
    Range(Selection, ActiveCell.SpecialCells(xlLastCell)).Select
    Range("AY3:AY88781").Select
    Application.CutCopyMode = False
    Selection.Copy
    Sheets("イントラ用DJ★リスト").Select
    Range("W3").Select
    ActiveSheet.Paste
    Sheets("素材一覧").Select

    Range("BV3").Select
    Range(Selection, Selection.End(xlDown)).Select
    Range(Selection, ActiveCell.SpecialCells(xlLastCell)).Select
    Application.CutCopyMode = False
    Selection.Copy
    Sheets("イントラ用DJ★リスト").Select
    Range("X3").Select
    ActiveSheet.Paste
    Sheets("素材一覧").Select

    Range("BP3").Select
    Range(Selection, Selection.End(xlDown)).Select
    Application.CutCopyMode = False
    Selection.Copy
    Sheets("イントラ用DJ★リスト").Select
    Range("Y3").Select
    ActiveSheet.Paste
    Range("L5").Select


    Sheets("イントラ用DJ★リスト").Select
    ActiveWindow.SmallScroll Down:=-6
    Rows("2:2").Select
    Selection.AutoFilter
    Selection.AutoFilter
    Range("C1").Select
    Sheets("素材一覧").Select
    Range("G1").Select

'余分な行を削除
    Sheets("イントラ用DJ★リスト").Select
    Range("A2").Select
    Selection.End(xlDown).Select
    Selection.Offset(1, 0).Select
    Range(Selection, Selection.End(xlToRight)).Select
    Range(Selection, Selection.End(xlDown)).Select
    Selection.Delete Shift:=xlUp
    Range("A1").Select
    Sheets("素材一覧").Select
    Range("G1").Select


    
 ' ソート解除
    Sheets("素材一覧").Select
    ActiveSheet.Range("$A:$BV").AutoFilter Field:=2
        
    
    

