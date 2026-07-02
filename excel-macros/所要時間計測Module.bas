Attribute VB_Name = "Module15"
Sub 所要時間計測モジュール()

'所要時間計測モジュール開始
Dim starttime, stoptime As Variant

'カウント開始
starttime = Time

'以下、所要時間計測対象処理
'この間に処理対象モジュール
'
'
'

'
'
'
'この間に処理対象モジュール
'以上、所要時間計測対象処理
'
stoptime = Time
stoptime = stoptime - starttime

MsgBox "マクロ処理時間は、" & Minute(stoptime) & "分" & Second(stoptime) & "秒"
'所要時間計測モジュール終了


End Sub

