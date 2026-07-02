Attribute VB_Name = "Module5"
Sub ⑤プラン名称()

'「百目」エンジン

'所要時間計測モジュール開始
Dim starttime, stoptime As Variant
'カウント開始
starttime = Time

'以下、所要時間計測対象処理
'この間に処理対象モジュール
'
Call ⑤プ名_赤目付
Call ⑤プ名_青目付
'
'この間に処理対象モジュール
'以上、所要時間計測対象処理
'
stoptime = Time
stoptime = stoptime - starttime
MsgBox "プラン名「赤目付」「青目付」処理時間は、" & Minute(stoptime) & "分" & Second(stoptime) & "秒"
'所要時間計測モジュール終了

End Sub

Sub ⑤プ名_赤目付()
'
'”赤目付”主要アラート文言
Dim re, mc, m, r As Range, endp As String
Set re = CreateObject("VBScript.RegExp")
re.Global = True
re.Pattern = "おまかせ|るるぶ|WEB|ＷＥＢ|Ｊ－|SMART|MART|マイル|JAL|ANA|標準|スペシャルプライス|お手頃価格|早得|価格重視|お約束|レート|バーゲン|露天|特別室|スイート|禁煙|洋室|和室|和洋室|シングル|ツイン|トリプル|ダブル|館|リフト|料金|代金|さき楽|復興|首里城|ポッキリ|ぽっきり|女|家族|ファミリー|レディ|女性|女子|カップル|円|￥|限定|ポイント|％|%|OFF|ＯＦＦ|オフ|off|ｏｆｆ|Off|Ｏｆｆ|価格|ネット|ﾈｯﾄ|歳|専用|学生|当日|現金|星空|ほたる|ホタル|ﾎﾀﾙ|蛍|大河|西郷|朝食無料|無料朝食|朝食サービス|サービス朝食|バイキング無料|無料バイキング|バイキングサービス|サービスバイキング|弁当|1枚|2枚|3枚|１枚|２枚|３枚|000|０００|QUO|ＱＵＯ|クオ|ｸｵ|館内利用券|クレジット|赤ちゃん|妊婦|マタニティ|No|Ｎｏ|リフト券|キャンセル|会員|えらべる倶楽部|夏特|夏得|夏トク|●●|GW|ＧＷ|夏休み|お花見|新春|もみじ|紅葉|歳末|年末|年始|盆|正月|真夏|冬休み|雪見|春|夏|秋|冬|残暑|花火|大会|まつり|祭|祭り|猛暑|夏休み|暑中|クリスマス|新年|梅雨|バレンタイン|父の日|母の日|バス|ディズニー|ＴＤＲ|TDR|添い寝|添寝|小学生|送迎|レンタサイクル|早割|ハヤワリ"
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

Sub ⑤プ名_青目付()
'
'”青目付”食事条件関連アラート文言
Dim re, mc, m, r As Range, endp As String
Set re = CreateObject("VBScript.RegExp")
re.Global = True
re.Pattern = "朝食|喫煙|夕食|2食|２食|二食|食事|バイキング|グルメ|放題|素泊|ルームチャージ|ブレックファースト|ディナー|レストラン|和食|洋食|中華|軽食"
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
