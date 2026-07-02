Attribute VB_Name = "Module1"
Sub キーワード赤文字化()

'所要時間表示モジュール開始
Dim starttime, stoptime As Variant

'カウント開始
starttime = Time

'以下、所要時間計測対象処理
'この間に処理対象モジュール
'
'
'
'「赤目」モジュール
Dim re, mc, m, r As Range, endp As String
Set re = CreateObject("VBScript.RegExp")
re.Global = True
'
'以下に目付するキーワード指定
re.Pattern = "グルメ|ぐるめ|旬の|美味|美食|料理長|板長|調理長|こだわり食材|新鮮|地場|味覚|地産|吟醸|食材|特選料理|懐石|蟹|カニ|鮑|アワビ|あわび|松阪牛|ブランド牛|ふぐ|フグ|河豚|あんこう|アンコウ|鮟鱇|のどぐろ|ノドグロ|のど黒|伊勢海老|伊勢えび|伊勢エビ|関鯵|関あじ|関アジ|関鯖|関サバ|関さば|ウニ|雲丹|うに|クエ|量少な|量より質|量控えめ|少量|エステ|タラソ|リフレクソロジー|あかすり|アカスリ|毒素|老廃物|リフトアップ|眺望良好|見えます|オーシャンビュー|一望|眼前|絶景|夜景|バイキング|ブフェ|ビュフェ|ブッフェ|ビュッフェ|食べ放題|記念日|アニバ|お祝い|飲み放題|フリードリンク|部屋食|一人旅|ひとり旅|ひとりたび|ぼっち旅|おひとり様歓迎|おひとりさま歓迎|一名一室|1名1室|1名一室|一名1室|一人1室|1人一室|一人一室|1人1室|スキー|リフト券|花火|蛍|ほたる|ホタル|大間鮪|大間マグロ|大間まぐろ|大間の鮪|大間のマグロ|大間のまぐろ"
'
'赤目付する場所指定
Set r = Range("AD:AD").Find("*")
If r Is Nothing Then End
endp = r.Address
Do
Set mc = re.Execute(r)
For Each m In mc
r.Characters _
(m.FirstIndex + 1, m.Length).Font.ColorIndex = 3
Next
'上記と同じく目付する場所指定
Set r = Range("AD:AD").FindNext(r)
Loop Until r.Address = endp
Set re = Nothing
'
'
'
'この間に処理対象モジュール
'以上、所要時間計測対象処理
'
stoptime = Time
stoptime = stoptime - starttime

MsgBox "マクロ処理時間は、" & Minute(stoptime) & "分" & Second(stoptime) & "秒"
'所要時間表示モジュール終了


End Sub

