Attribute VB_Name = "Module15"
Sub ���v���Ԍv�����W���[��()

'���v���Ԍv�����W���[���J�n
Dim starttime, stoptime As Variant

'�J�E���g�J�n
starttime = Time

'�ȉ��A���v���Ԍv���Ώۏ���
'���̊Ԃɏ����Ώۃ��W���[��
'
'
'

'
'
'
'���̊Ԃɏ����Ώۃ��W���[��
'�ȏ�A���v���Ԍv���Ώۏ���
'
stoptime = Time
stoptime = stoptime - starttime

MsgBox "�}�N���������Ԃ́A" & Minute(stoptime) & "��" & Second(stoptime) & "�b"
'���v���Ԍv�����W���[���I��


End Sub

