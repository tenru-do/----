Attribute VB_Name = "Module1"
Sub Macro3()
Attribute Macro3.VB_ProcData.VB_Invoke_Func = " \n14"
'
' Macro3 Macro
'



    Dim i           '// ���[�v�J�E���^
    Dim s           '// �Z���l
    
    '// E3�Z�����A�N�e�B�u
    
    Sheets("2020").Select
    Range("E3").Select
    
    '// �Z���l���擾
    s = ActiveCell.Offset(i, 0).Value
    
    '// ���[�v�J�E���^��������
    i = 0
    
    '// ��Z���܂Ń��[�v
     
    
    
    
    Do
        
       

        
        
'�܂��X�^�[�g�A�J�n�ʒu�w�肵�āA�E�̃v�����R�[�h�B���R�s�[
    
    '�X�^�[�g�ʒu����E���E�܂ŃR�s�[
    
   
    Range(Selection, Selection.End(xlToRight)).Select
    Application.CutCopyMode = False
    Selection.Copy
      
    
'��Ə�V�[�g�ֈړ����A�v�����R�[�h���ŏI�s����90�x�ϊ����ē\��t���B
    
    Sheets("��Ə�1").Select
    Range("A1").Select
    Selection.End(xlDown).Select
    '1�s������
    ActiveCell.Offset(1, 0).Activate
    
'90�x�ϊ����ē\��t��
    Selection.PasteSpecial Paste:=xlPasteAll, Operation:=xlNone, SkipBlanks:= _
        False, Transpose:=True
    

'���̍H���A���̍s�Ɉڂ��č�Ƒ��s�B


    
    Sheets("2020").Select
    
    Range(Selection, Selection.End(xlToRight)).Select
    Application.CutCopyMode = False
    Selection.Copy
     '1�s������
    ActiveCell.Offset(1, 0).Activate
    
    
    '�ȍ~�J��Ԃ��B
    
            
        

        '// �Z���l�����ݒ�̏ꍇ
        If s = "" Then
            '// ���[�v�𔲂���
            Exit Do
        End If
        
        '// ���[�v�J�E���^�����Z
        i = i + 1
    Loop

    
    
    
    
    
End Sub
