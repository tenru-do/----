Attribute VB_Name = "Module1"
Sub �L�[���[�h�ԕ�����()

'���v���ԕ\�����W���[���J�n
Dim starttime, stoptime As Variant

'�J�E���g�J�n
starttime = Time

'�ȉ��A���v���Ԍv���Ώۏ���
'���̊Ԃɏ����Ώۃ��W���[��
'
'
'
'�u�Ԗځv���W���[��
Dim re, mc, m, r As Range, endp As String
Set re = CreateObject("VBScript.RegExp")
re.Global = True
'
'�ȉ��ɖڕt����L�[���[�h�w��
re.Pattern = "�O����|�����|�{��|����|���H|������|��|������|�������H��|�V�N|�n��|���o|�n�Y|���|�H��|���I����|����|�I|�J�j|�|�A���r|�����|���㋍|�u�����h��|�ӂ�|�t�O|�͓�|���񂱂�|�A���R�E|���|�̂ǂ���|�m�h�O��|�̂Ǎ�|�ɐ��C�V|�ɐ�����|�ɐ��G�r|�ֈ�|�ւ���|�փA�W|�֎I|�փT�o|�ւ���|�E�j|�_�O|����|�N�G|�ʏ���|�ʂ�莿|�ʍT����|����|�G�X�e|�^���\|���t���N�\���W�[|��������|�A�J�X��|�őf|�V�p��|���t�g�A�b�v|���]�ǍD|�����܂�|�I�[�V�����r���[|��]|��O|��i|��i|�o�C�L���O|�u�t�F|�r���t�F|�u�b�t�F|�r���b�t�F|�H�ו���|�L�O��|�A�j�o|���j��|���ݕ���|�t���[�h�����N|�����H|��l��|�ЂƂ藷|�ЂƂ肽��|�ڂ�����|���ЂƂ�l���}|���ЂƂ肳�܊��}|�ꖼ�ꎺ|1��1��|1���ꎺ|�ꖼ1��|��l1��|1�l�ꎺ|��l�ꎺ|1�l1��|�X�L�[|���t�g��|�ԉ�|�u|�ق���|�z�^��|��Ԗ�|��ԃ}�O��|��Ԃ܂���|��Ԃ̖�|��Ԃ̃}�O��|��Ԃ̂܂���"
'
'�Ԗڕt����ꏊ�w��
Set r = Range("AD:AD").Find("*")
If r Is Nothing Then End
endp = r.Address
Do
Set mc = re.Execute(r)
For Each m In mc
r.Characters _
(m.FirstIndex + 1, m.Length).Font.ColorIndex = 3
Next
'��L�Ɠ������ڕt����ꏊ�w��
Set r = Range("AD:AD").FindNext(r)
Loop Until r.Address = endp
Set re = Nothing
'
'
'
'���̊Ԃɏ����Ώۃ��W���[��
'�ȏ�A���v���Ԍv���Ώۏ���
'
stoptime = Time
stoptime = stoptime - starttime

MsgBox "�}�N���������Ԃ́A" & Minute(stoptime) & "��" & Second(stoptime) & "�b"
'���v���ԕ\�����W���[���I��


End Sub

