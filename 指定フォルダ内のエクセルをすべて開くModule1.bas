Attribute VB_Name = "Module1"
'�w��t�H���_�[����Excel�t�@�C�������ׂĊJ���T���v���}�N��
'�ȉ��̃}�N�������s����ƁuC:\tmp�v�t�H���_�[�ɂ���Excel�t�@�C�������ׂĊJ�����Ƃ��ł��܂��B

Sub �w��t�H���_�[��Excel�t�@�C����S�ĊJ��()
  Const DIR_PATH = "C:\Users\HEAD0103\Downloads\test"
  Dim fl_name As String
  fl_name = Dir(DIR_PATH & "\*.xls*")
  If fl_name = "" Then
    MsgBox "Excel�t�@�C��������܂���B"
    Exit Sub
  End If

  Do
    Workbooks.Open Filename:=DIR_PATH & "\" & fl_name
    fl_name = Dir
  Loop Until fl_name = ""
End Sub
