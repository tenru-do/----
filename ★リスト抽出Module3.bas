Attribute VB_Name = "Module3"


' �C���g��DJ�����X�g����()
'

'�ȉ��K�v�s�֓\��t��
    ActiveWindow.SmallScroll Down:=-12
    Range("BT3").Select
    Range(Selection, Selection.End(xlDown)).Select
    Application.CutCopyMode = False
    Selection.Copy
    Sheets("�C���g���pDJ�����X�g").Select
    Range("K3").Select
    ActiveSheet.Paste
    Sheets("�f�ވꗗ").Select

    Range("R3:S3").Select
    Range(Selection, Selection.End(xlDown)).Select
    Application.CutCopyMode = False
    Selection.Copy
    Sheets("�C���g���pDJ�����X�g").Select
    Range("L3").Select
    ActiveSheet.Paste
    Sheets("�f�ވꗗ").Select

    Range("B2:K2").Select
    Range(Selection, Selection.End(xlDown)).Select
    Application.CutCopyMode = False
    Selection.Copy
    Sheets("�C���g���pDJ�����X�g").Select
    Range("A2").Select
    ActiveSheet.Paste
    Sheets("�f�ވꗗ").Select

    Sheets("�f�ވꗗ").Select
    ActiveWindow.SmallScroll Down:=-6
    Range("U3:V3").Select
    Range(Selection, Selection.End(xlDown)).Select
    Application.CutCopyMode = False
    Selection.Copy
    Sheets("�C���g���pDJ�����X�g").Select
    Range("N3").Select
    ActiveSheet.Paste
    Sheets("�f�ވꗗ").Select

    Range("AG3:AH3").Select
    Range(Selection, Selection.End(xlDown)).Select
    Application.CutCopyMode = False
    Selection.Copy
    Sheets("�C���g���pDJ�����X�g").Select
    Range("P3").Select
    ActiveSheet.Paste
    ActiveWindow.ScrollColumn = 2
    Sheets("�f�ވꗗ").Select

    Range("BG3").Select
    Range(Selection, Selection.End(xlDown)).Select
    Application.CutCopyMode = False
    Selection.Copy
    Sheets("�C���g���pDJ�����X�g").Select
    Range("T3").Select
    ActiveSheet.Paste
    Sheets("�f�ވꗗ").Select

    Range("BU3").Select
    Range(Selection, Selection.End(xlDown)).Select
    Range(Selection, ActiveCell.SpecialCells(xlLastCell)).Select
    Range("BU3:BU88781").Select
    Application.CutCopyMode = False
    Selection.Copy
    Sheets("�C���g���pDJ�����X�g").Select
    Range("U3").Select
    ActiveSheet.Paste
    Sheets("�f�ވꗗ").Select

    Range("O3").Select
    Range(Selection, Selection.End(xlDown)).Select
    Application.CutCopyMode = False
    Selection.Copy
    Sheets("�C���g���pDJ�����X�g").Select
    Range("V3").Select
    ActiveSheet.Paste
    Selection.PasteSpecial Paste:=xlPasteValues, Operation:=xlNone, SkipBlanks _
        :=False, Transpose:=False
    Sheets("�f�ވꗗ").Select

    Range("AY3").Select
    Range(Selection, ActiveCell.SpecialCells(xlLastCell)).Select
    Range("AY3:AY88781").Select
    Application.CutCopyMode = False
    Selection.Copy
    Sheets("�C���g���pDJ�����X�g").Select
    Range("W3").Select
    ActiveSheet.Paste
    Sheets("�f�ވꗗ").Select

    Range("BV3").Select
    Range(Selection, Selection.End(xlDown)).Select
    Range(Selection, ActiveCell.SpecialCells(xlLastCell)).Select
    Application.CutCopyMode = False
    Selection.Copy
    Sheets("�C���g���pDJ�����X�g").Select
    Range("X3").Select
    ActiveSheet.Paste
    Sheets("�f�ވꗗ").Select

    Range("BP3").Select
    Range(Selection, Selection.End(xlDown)).Select
    Application.CutCopyMode = False
    Selection.Copy
    Sheets("�C���g���pDJ�����X�g").Select
    Range("Y3").Select
    ActiveSheet.Paste
    Range("L5").Select


    Sheets("�C���g���pDJ�����X�g").Select
    ActiveWindow.SmallScroll Down:=-6
    Rows("2:2").Select
    Selection.AutoFilter
    Selection.AutoFilter
    Range("C1").Select
    Sheets("�f�ވꗗ").Select
    Range("G1").Select

'�]���ȍs���폜
    Sheets("�C���g���pDJ�����X�g").Select
    Range("A2").Select
    Selection.End(xlDown).Select
    Selection.Offset(1, 0).Select
    Range(Selection, Selection.End(xlToRight)).Select
    Range(Selection, Selection.End(xlDown)).Select
    Selection.Delete Shift:=xlUp
    Range("A1").Select
    Sheets("�f�ވꗗ").Select
    Range("G1").Select


    
 ' �\�[�g����
    Sheets("�f�ވꗗ").Select
    ActiveSheet.Range("$A:$BV").AutoFilter Field:=2
        
    
    

