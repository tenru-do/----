Attribute VB_Name = "Module1"
Sub �Ȃ�ł��ڕt�G���W��()

'�V�u�S�ځv�G���W���@���߁@�Ȃ�ł��u�ڕt�v�G���W��

'���v���Ԍv�����W���[���J�n
Dim starttime, stoptime As Variant
'�J�E���g�J�n
starttime = Time

'�ȉ��A���v���Ԍv���Ώۏ���
'���̊Ԃɏ����Ώۃ��W���[��
'
Call ����v�����^�C�g��_�Ԗڕt_�S��
Call ����v�����^�C�g��_�Ԗڕt_�ߕ�
Call ����h�L�������g_�Ԗڕt_�S��
Call ����h�L�������g_�Ԗڕt_�ߕ�
Call �h�L�������g_�Ԗڕt_�S��
Call �h�L�������g_�Ԗڕt_�ߕ�

'
'���̊Ԃɏ����Ώۃ��W���[��
'�ȏ�A���v���Ԍv���Ώۏ���
'
stoptime = Time
stoptime = stoptime - starttime
MsgBox "�Ȃ�ł��u�ڕt�v�G���W���@�������Ԃ́A" & Minute(stoptime) & "��" & Second(stoptime) & "�b"

'���v���Ԍv�����W���[���I��

End Sub



Sub ����v�����^�C�g��_�Ԗڕt_�S��()
  
For Each �w��L�[���[�h In Worksheets("�y��z���X�g�z").Range("B3�FB100") '���X�g�V�[�g�w��̂��ׂẴL�[���[�h�Ŏ��s

    If �w��L�[���[�h <> "" Then                '�󕶎��łȂ��ꍇ�������s
      �F = �w��L�[���[�h.Font.ColorIndex     '�F��ǂݍ���
      �����T�C�Y = �w��L�[���[�h.Font.Size   '�����T�C�Y��ǂݍ���
      ���������� = Len(�w��L�[���[�h)        '�L�[���[�h���𒲂ׂ�
      For Each �Z�� In Range("U8:U1007")         '�F��ύX�������͈͂�ݒ�
        �����J�n�ʒu = 1                    '�u�����J�n�ʒu�v�ϐ���������
        Do                                  '���������𔭌������ʒu���J��Ԃ����ׂ�
          �����ʒu = InStr(�����J�n�ʒu, �Z��.Text, �w��L�[���[�h)
          If �����ʒu = 0 Then Exit Do    '�����ł��Ȃ������烋�[�v����E�o
          With �Z��   '�����ł����Z���ŕ����̐F�ƃT�C�Y��ݒ�
            .Characters(�����ʒu, ����������).Font.ColorIndex = �F '�����F�ɂ���
'            .Characters(�����ʒu, ����������).Font.Size = �����T�C�Y '���������T�C�Y�ɂ���
            .Characters(�����ʒu, ����������).Font.Bold = True '�����ɂ���
'            .Characters(�����ʒu, ����������).Font.Italic = True '�Α̂ɂ���
          End With
            �����J�n�ʒu = �����ʒu + ����������    '�u�����J�n�ʒu�v��ݒ�
        Loop
      Next
    End If
  Next

End Sub


Sub ����v�����^�C�g��_�Ԗڕt_�ߕ�()
  
For Each �w��L�[���[�h In Worksheets("�y��z���X�g�z").Range("C3�FC100") '���X�g�V�[�g�w��̂��ׂẴL�[���[�h�Ŏ��s

    If �w��L�[���[�h <> "" Then                '�󕶎��łȂ��ꍇ�������s
      �F = �w��L�[���[�h.Font.ColorIndex     '�F��ǂݍ���
      �����T�C�Y = �w��L�[���[�h.Font.Size   '�����T�C�Y��ǂݍ���
      ���������� = Len(�w��L�[���[�h)        '�L�[���[�h���𒲂ׂ�
      For Each �Z�� In Range("U8:U1007")         '�F��ύX�������͈͂�ݒ�
        �����J�n�ʒu = 1                    '�u�����J�n�ʒu�v�ϐ���������
        Do                                  '���������𔭌������ʒu���J��Ԃ����ׂ�
          �����ʒu = InStr(�����J�n�ʒu, �Z��.Text, �w��L�[���[�h)
          If �����ʒu = 0 Then Exit Do    '�����ł��Ȃ������烋�[�v����E�o
          With �Z��   '�����ł����Z���ŕ����̐F�ƃT�C�Y��ݒ�
            .Characters(�����ʒu, ����������).Font.ColorIndex = �F '�����F�ɂ���
'            .Characters(�����ʒu, ����������).Font.Size = �����T�C�Y '���������T�C�Y�ɂ���
            .Characters(�����ʒu, ����������).Font.Bold = False '�����ɂ���
'            .Characters(�����ʒu, ����������).Font.Italic = True '�Α̂ɂ���
          End With
            �����J�n�ʒu = �����ʒu + ����������    '�u�����J�n�ʒu�v��ݒ�
        Loop
      Next
    End If
  Next

End Sub

Sub ����h�L�������g_�Ԗڕt_�S��()
  
For Each �w��L�[���[�h In Worksheets("�y��z���X�g�z").Range("D3�FD100") '���X�g�V�[�g�w��̂��ׂẴL�[���[�h�Ŏ��s

    If �w��L�[���[�h <> "" Then                '�󕶎��łȂ��ꍇ�������s
      �F = �w��L�[���[�h.Font.ColorIndex     '�F��ǂݍ���
      �����T�C�Y = �w��L�[���[�h.Font.Size   '�����T�C�Y��ǂݍ���
      ���������� = Len(�w��L�[���[�h)        '�L�[���[�h���𒲂ׂ�
      For Each �Z�� In Range("x8:x1007")         '�F��ύX�������͈͂�ݒ�
        �����J�n�ʒu = 1                    '�u�����J�n�ʒu�v�ϐ���������
        Do                                  '���������𔭌������ʒu���J��Ԃ����ׂ�
          �����ʒu = InStr(�����J�n�ʒu, �Z��.Text, �w��L�[���[�h)
          If �����ʒu = 0 Then Exit Do    '�����ł��Ȃ������烋�[�v����E�o
          With �Z��   '�����ł����Z���ŕ����̐F�ƃT�C�Y��ݒ�
            .Characters(�����ʒu, ����������).Font.ColorIndex = �F '�����F�ɂ���
'            .Characters(�����ʒu, ����������).Font.Size = �����T�C�Y '���������T�C�Y�ɂ���
            .Characters(�����ʒu, ����������).Font.Bold = True '�����ɂ���
'            .Characters(�����ʒu, ����������).Font.Italic = True '�Α̂ɂ���
          End With
            �����J�n�ʒu = �����ʒu + ����������    '�u�����J�n�ʒu�v��ݒ�
        Loop
      Next
    End If
  Next

End Sub


Sub ����h�L�������g_�Ԗڕt_�ߕ�()
  
For Each �w��L�[���[�h In Worksheets("�y��z���X�g�z").Range("E3�FE100") '���X�g�V�[�g�w��̂��ׂẴL�[���[�h�Ŏ��s

    If �w��L�[���[�h <> "" Then                '�󕶎��łȂ��ꍇ�������s
      �F = �w��L�[���[�h.Font.ColorIndex     '�F��ǂݍ���
      �����T�C�Y = �w��L�[���[�h.Font.Size   '�����T�C�Y��ǂݍ���
      ���������� = Len(�w��L�[���[�h)        '�L�[���[�h���𒲂ׂ�
      For Each �Z�� In Range("x8:x1007")         '�F��ύX�������͈͂�ݒ�
        �����J�n�ʒu = 1                    '�u�����J�n�ʒu�v�ϐ���������
        Do                                  '���������𔭌������ʒu���J��Ԃ����ׂ�
          �����ʒu = InStr(�����J�n�ʒu, �Z��.Text, �w��L�[���[�h)
          If �����ʒu = 0 Then Exit Do    '�����ł��Ȃ������烋�[�v����E�o
          With �Z��   '�����ł����Z���ŕ����̐F�ƃT�C�Y��ݒ�
            .Characters(�����ʒu, ����������).Font.ColorIndex = �F '�����F�ɂ���
'            .Characters(�����ʒu, ����������).Font.Size = �����T�C�Y '���������T�C�Y�ɂ���
            .Characters(�����ʒu, ����������).Font.Bold = False '�����ɂ���
'            .Characters(�����ʒu, ����������).Font.Italic = True '�Α̂ɂ���
          End With
            �����J�n�ʒu = �����ʒu + ����������    '�u�����J�n�ʒu�v��ݒ�
        Loop
      Next
    End If
  Next

End Sub


Sub �h�L�������g_�Ԗڕt_�S��()
  
For Each �w��L�[���[�h In Worksheets("�y��z���X�g�z").Range("F3�FF200") '���X�g�V�[�g�w��̂��ׂẴL�[���[�h�Ŏ��s

    If �w��L�[���[�h <> "" Then                '�󕶎��łȂ��ꍇ�������s
      �F = �w��L�[���[�h.Font.ColorIndex     '�F��ǂݍ���
      �����T�C�Y = �w��L�[���[�h.Font.Size   '�����T�C�Y��ǂݍ���
      ���������� = Len(�w��L�[���[�h)        '�L�[���[�h���𒲂ׂ�
      For Each �Z�� In Range("x8:x1007")         '�F��ύX�������͈͂�ݒ�
        �����J�n�ʒu = 1                    '�u�����J�n�ʒu�v�ϐ���������
        Do                                  '���������𔭌������ʒu���J��Ԃ����ׂ�
          �����ʒu = InStr(�����J�n�ʒu, �Z��.Text, �w��L�[���[�h)
          If �����ʒu = 0 Then Exit Do    '�����ł��Ȃ������烋�[�v����E�o
          With �Z��   '�����ł����Z���ŕ����̐F�ƃT�C�Y��ݒ�
            .Characters(�����ʒu, ����������).Font.ColorIndex = �F '�����F�ɂ���
'            .Characters(�����ʒu, ����������).Font.Size = �����T�C�Y '���������T�C�Y�ɂ���
            .Characters(�����ʒu, ����������).Font.Bold = True '�����ɂ���
'            .Characters(�����ʒu, ����������).Font.Italic = True '�Α̂ɂ���
          End With
            �����J�n�ʒu = �����ʒu + ����������    '�u�����J�n�ʒu�v��ݒ�
        Loop
      Next
    End If
  Next

End Sub


Sub �h�L�������g_�Ԗڕt_�ߕ�()
  
For Each �w��L�[���[�h In Worksheets("�y��z���X�g�z").Range("G3�FG200") '���X�g�V�[�g�w��̂��ׂẴL�[���[�h�Ŏ��s

    If �w��L�[���[�h <> "" Then                '�󕶎��łȂ��ꍇ�������s
      �F = �w��L�[���[�h.Font.ColorIndex     '�F��ǂݍ���
      �����T�C�Y = �w��L�[���[�h.Font.Size   '�����T�C�Y��ǂݍ���
      ���������� = Len(�w��L�[���[�h)        '�L�[���[�h���𒲂ׂ�
      For Each �Z�� In Range("x8:x1007")         '�F��ύX�������͈͂�ݒ�
        �����J�n�ʒu = 1                    '�u�����J�n�ʒu�v�ϐ���������
        Do                                  '���������𔭌������ʒu���J��Ԃ����ׂ�
          �����ʒu = InStr(�����J�n�ʒu, �Z��.Text, �w��L�[���[�h)
          If �����ʒu = 0 Then Exit Do    '�����ł��Ȃ������烋�[�v����E�o
          With �Z��   '�����ł����Z���ŕ����̐F�ƃT�C�Y��ݒ�
            .Characters(�����ʒu, ����������).Font.ColorIndex = �F '�����F�ɂ���
'            .Characters(�����ʒu, ����������).Font.Size = �����T�C�Y '���������T�C�Y�ɂ���
            .Characters(�����ʒu, ����������).Font.Bold = False '�����ɂ���
'            .Characters(�����ʒu, ����������).Font.Italic = True '�Α̂ɂ���
          End With
            �����J�n�ʒu = �����ʒu + ����������    '�u�����J�n�ʒu�v��ݒ�
        Loop
      Next
    End If
  Next

End Sub

