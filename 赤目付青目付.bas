Attribute VB_Name = "Module5"
Sub �D�v��������()

'�u�S�ځv�G���W��

'���v���Ԍv�����W���[���J�n
Dim starttime, stoptime As Variant
'�J�E���g�J�n
starttime = Time

'�ȉ��A���v���Ԍv���Ώۏ���
'���̊Ԃɏ����Ώۃ��W���[��
'
Call �D�v��_�Ԗڕt
Call �D�v��_�ڕt
'
'���̊Ԃɏ����Ώۃ��W���[��
'�ȏ�A���v���Ԍv���Ώۏ���
'
stoptime = Time
stoptime = stoptime - starttime
MsgBox "�v�������u�Ԗڕt�v�u�ڕt�v�������Ԃ́A" & Minute(stoptime) & "��" & Second(stoptime) & "�b"
'���v���Ԍv�����W���[���I��

End Sub

Sub �D�v��_�Ԗڕt()
'
'�h�Ԗڕt�h��v�A���[�g����
Dim re, mc, m, r As Range, endp As String
Set re = CreateObject("VBScript.RegExp")
re.Global = True
re.Pattern = "���܂���|����|WEB|�v�d�a|�i�||SMART|MART|�}�C��|JAL|ANA|�W��|�X�y�V�����v���C�X|���荠���i|����|���i�d��|����|���[�g|�o�[�Q��|�I�V|���ʎ�|�X�C�[�g|�։�|�m��|�a��|�a�m��|�V���O��|�c�C��|�g���v��|�_�u��|��|���t�g|����|���|�����y|����|�񗢏�|�|�b�L��|�ۂ�����|��|�Ƒ�|�t�@�~���[|���f�B|����|���q|�J�b�v��|�~|��|����|�|�C���g|��|%|OFF|�n�e�e|�I�t|off|������|Off|�n����|���i|�l�b�g|ȯ�|��|��p|�w��|����|����|����|�ق���|�z�^��|���|�u|���|����|���H����|�������H|���H�T�[�r�X|�T�[�r�X���H|�o�C�L���O����|�����o�C�L���O|�o�C�L���O�T�[�r�X|�T�[�r�X�o�C�L���O|�ٓ�|1��|2��|3��|�P��|�Q��|�R��|000|�O�O�O|QUO|�p�t�n|�N�I|��|�ٓ����p��|�N���W�b�g|�Ԃ����|�D�w|�}�^�j�e�B|No|�m��|���t�g��|�L�����Z��|���|����ׂ��y��|�ē�|�ē�|�ăg�N|����|GW|�f�v|�ċx��|���Ԍ�|�V�t|���݂�|�g�t|�Ζ�|�N��|�N�n|�~|����|�^��|�~�x��|�ጩ|�t|��|�H|�~|�c��|�ԉ�|���|�܂�|��|�Ղ�|�ҏ�|�ċx��|����|�N���X�}�X|�V�N|�~�J|�o�����^�C��|���̓�|��̓�|�o�X|�f�B�Y�j�[|�s�c�q|TDR|�Y���Q|�Y�Q|���w��|���}|�����^�T�C�N��|����|�n������"
Set r = Range("j7:j3506").Find("*")
If r Is Nothing Then End
endp = r.Address
Do
Set mc = re.Execute(r)
For Each m In mc
r.Characters _
(m.FirstIndex + 1, m.Length).Font.ColorIndex = 3
Next
Set r = Range("j7:j3506").FindNext(r)
Loop Until r.Address = endp
Set re = Nothing
'
End Sub

Sub �D�v��_�ڕt()
'
'�h�ڕt�h�H�������֘A�A���[�g����
Dim re, mc, m, r As Range, endp As String
Set re = CreateObject("VBScript.RegExp")
re.Global = True
re.Pattern = "���H|�i��|�[�H|2�H|�Q�H|��H|�H��|�o�C�L���O|�O����|����|�f��|���[���`���[�W|�u���b�N�t�@�[�X�g|�f�B�i�[|���X�g����|�a�H|�m�H|����|�y�H"
Set r = Range("j7:j3506").Find("*")
If r Is Nothing Then End
endp = r.Address
Do
Set mc = re.Execute(r)
For Each m In mc
r.Characters _
(m.FirstIndex + 1, m.Length).Font.ColorIndex = 5
Next
Set r = Range("j7:j3506").FindNext(r)
Loop Until r.Address = endp
Set re = Nothing
'
End Sub
