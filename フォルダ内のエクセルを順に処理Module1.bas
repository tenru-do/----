Attribute VB_Name = "Module1"
Sub �t�H���_���t�@�C�������ɏ������W���[��()

    Dim path, fso, file, files
    path = "C:/Users/xxxxxx/�t�H���_��/"
    'path = ThisWorkbook.Path & "/�t�H���_��/"  '���΃p�X�̏ꍇ
    Set fso = CreateObject("Scripting.FileSystemObject")
    Set files = fso.GetFolder(path).files

    '�t�H���_���̑S�t�@�C���ɂ��ď���
    For Each file In files

        '�t�@�C�����J���ău�b�N�Ƃ��Ď擾
        Dim wb As Workbook
        Set wb = Workbooks.Open(file)

        '�u�b�N�ɑ΂��鏈��

        '�ۑ������ɕ���
        Call wb.Close(SaveChanges:=False)

    Next file

End Sub
