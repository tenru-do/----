Attribute VB_Name = "Module1"
Sub なんでも目付エンジン()

'新「百目」エンジン　改め　なんでも「目付」エンジン

'所要時間計測モジュール開始
Dim starttime, stoptime As Variant
'カウント開始
starttime = Time

'以下、所要時間計測対象処理
'この間に処理対象モジュール
'
Call 商企プランタイトル_赤目付_拘束
Call 商企プランタイトル_赤目付_釈放
Call 商企ドキュメント_赤目付_拘束
Call 商企ドキュメント_赤目付_釈放
Call ドキュメント_赤目付_拘束
Call ドキュメント_赤目付_釈放

'
'この間に処理対象モジュール
'以上、所要時間計測対象処理
'
stoptime = Time
stoptime = stoptime - starttime
MsgBox "なんでも「目付」エンジン　処理時間は、" & Minute(stoptime) & "分" & Second(stoptime) & "秒"

'所要時間計測モジュール終了

End Sub



Sub 商企プランタイトル_赤目付_拘束()
  
For Each 指定キーワード In Worksheets("【手配リスト】").Range("B3：B100") 'リストシート指定のすべてのキーワードで実行

    If 指定キーワード <> "" Then                '空文字でない場合だけ実行
      色 = 指定キーワード.Font.ColorIndex     '色を読み込む
      文字サイズ = 指定キーワード.Font.Size   '文字サイズを読み込む
      検索文字長 = Len(指定キーワード)        'キーワード長を調べる
      For Each セル In Range("U8:U1007")         '色を変更したい範囲を設定
        検索開始位置 = 1                    '「検索開始位置」変数を初期化
        Do                                  '検索文字を発見した位置を繰り返し調べる
          発見位置 = InStr(検索開始位置, セル.Text, 指定キーワード)
          If 発見位置 = 0 Then Exit Do    '発見できなかったらループから脱出
          With セル   '発見できたセルで文字の色とサイズを設定
            .Characters(発見位置, 検索文字長).Font.ColorIndex = 色 '同じ色にする
'            .Characters(発見位置, 検索文字長).Font.Size = 文字サイズ '同じ文字サイズにする
            .Characters(発見位置, 検索文字長).Font.Bold = True '太字にする
'            .Characters(発見位置, 検索文字長).Font.Italic = True '斜体にする
          End With
            検索開始位置 = 発見位置 + 検索文字長    '「検索開始位置」を設定
        Loop
      Next
    End If
  Next

End Sub


Sub 商企プランタイトル_赤目付_釈放()
  
For Each 指定キーワード In Worksheets("【手配リスト】").Range("C3：C100") 'リストシート指定のすべてのキーワードで実行

    If 指定キーワード <> "" Then                '空文字でない場合だけ実行
      色 = 指定キーワード.Font.ColorIndex     '色を読み込む
      文字サイズ = 指定キーワード.Font.Size   '文字サイズを読み込む
      検索文字長 = Len(指定キーワード)        'キーワード長を調べる
      For Each セル In Range("U8:U1007")         '色を変更したい範囲を設定
        検索開始位置 = 1                    '「検索開始位置」変数を初期化
        Do                                  '検索文字を発見した位置を繰り返し調べる
          発見位置 = InStr(検索開始位置, セル.Text, 指定キーワード)
          If 発見位置 = 0 Then Exit Do    '発見できなかったらループから脱出
          With セル   '発見できたセルで文字の色とサイズを設定
            .Characters(発見位置, 検索文字長).Font.ColorIndex = 色 '同じ色にする
'            .Characters(発見位置, 検索文字長).Font.Size = 文字サイズ '同じ文字サイズにする
            .Characters(発見位置, 検索文字長).Font.Bold = False '太字にする
'            .Characters(発見位置, 検索文字長).Font.Italic = True '斜体にする
          End With
            検索開始位置 = 発見位置 + 検索文字長    '「検索開始位置」を設定
        Loop
      Next
    End If
  Next

End Sub

Sub 商企ドキュメント_赤目付_拘束()
  
For Each 指定キーワード In Worksheets("【手配リスト】").Range("D3：D100") 'リストシート指定のすべてのキーワードで実行

    If 指定キーワード <> "" Then                '空文字でない場合だけ実行
      色 = 指定キーワード.Font.ColorIndex     '色を読み込む
      文字サイズ = 指定キーワード.Font.Size   '文字サイズを読み込む
      検索文字長 = Len(指定キーワード)        'キーワード長を調べる
      For Each セル In Range("x8:x1007")         '色を変更したい範囲を設定
        検索開始位置 = 1                    '「検索開始位置」変数を初期化
        Do                                  '検索文字を発見した位置を繰り返し調べる
          発見位置 = InStr(検索開始位置, セル.Text, 指定キーワード)
          If 発見位置 = 0 Then Exit Do    '発見できなかったらループから脱出
          With セル   '発見できたセルで文字の色とサイズを設定
            .Characters(発見位置, 検索文字長).Font.ColorIndex = 色 '同じ色にする
'            .Characters(発見位置, 検索文字長).Font.Size = 文字サイズ '同じ文字サイズにする
            .Characters(発見位置, 検索文字長).Font.Bold = True '太字にする
'            .Characters(発見位置, 検索文字長).Font.Italic = True '斜体にする
          End With
            検索開始位置 = 発見位置 + 検索文字長    '「検索開始位置」を設定
        Loop
      Next
    End If
  Next

End Sub


Sub 商企ドキュメント_赤目付_釈放()
  
For Each 指定キーワード In Worksheets("【手配リスト】").Range("E3：E100") 'リストシート指定のすべてのキーワードで実行

    If 指定キーワード <> "" Then                '空文字でない場合だけ実行
      色 = 指定キーワード.Font.ColorIndex     '色を読み込む
      文字サイズ = 指定キーワード.Font.Size   '文字サイズを読み込む
      検索文字長 = Len(指定キーワード)        'キーワード長を調べる
      For Each セル In Range("x8:x1007")         '色を変更したい範囲を設定
        検索開始位置 = 1                    '「検索開始位置」変数を初期化
        Do                                  '検索文字を発見した位置を繰り返し調べる
          発見位置 = InStr(検索開始位置, セル.Text, 指定キーワード)
          If 発見位置 = 0 Then Exit Do    '発見できなかったらループから脱出
          With セル   '発見できたセルで文字の色とサイズを設定
            .Characters(発見位置, 検索文字長).Font.ColorIndex = 色 '同じ色にする
'            .Characters(発見位置, 検索文字長).Font.Size = 文字サイズ '同じ文字サイズにする
            .Characters(発見位置, 検索文字長).Font.Bold = False '太字にする
'            .Characters(発見位置, 検索文字長).Font.Italic = True '斜体にする
          End With
            検索開始位置 = 発見位置 + 検索文字長    '「検索開始位置」を設定
        Loop
      Next
    End If
  Next

End Sub


Sub ドキュメント_赤目付_拘束()
  
For Each 指定キーワード In Worksheets("【手配リスト】").Range("F3：F200") 'リストシート指定のすべてのキーワードで実行

    If 指定キーワード <> "" Then                '空文字でない場合だけ実行
      色 = 指定キーワード.Font.ColorIndex     '色を読み込む
      文字サイズ = 指定キーワード.Font.Size   '文字サイズを読み込む
      検索文字長 = Len(指定キーワード)        'キーワード長を調べる
      For Each セル In Range("x8:x1007")         '色を変更したい範囲を設定
        検索開始位置 = 1                    '「検索開始位置」変数を初期化
        Do                                  '検索文字を発見した位置を繰り返し調べる
          発見位置 = InStr(検索開始位置, セル.Text, 指定キーワード)
          If 発見位置 = 0 Then Exit Do    '発見できなかったらループから脱出
          With セル   '発見できたセルで文字の色とサイズを設定
            .Characters(発見位置, 検索文字長).Font.ColorIndex = 色 '同じ色にする
'            .Characters(発見位置, 検索文字長).Font.Size = 文字サイズ '同じ文字サイズにする
            .Characters(発見位置, 検索文字長).Font.Bold = True '太字にする
'            .Characters(発見位置, 検索文字長).Font.Italic = True '斜体にする
          End With
            検索開始位置 = 発見位置 + 検索文字長    '「検索開始位置」を設定
        Loop
      Next
    End If
  Next

End Sub


Sub ドキュメント_赤目付_釈放()
  
For Each 指定キーワード In Worksheets("【手配リスト】").Range("G3：G200") 'リストシート指定のすべてのキーワードで実行

    If 指定キーワード <> "" Then                '空文字でない場合だけ実行
      色 = 指定キーワード.Font.ColorIndex     '色を読み込む
      文字サイズ = 指定キーワード.Font.Size   '文字サイズを読み込む
      検索文字長 = Len(指定キーワード)        'キーワード長を調べる
      For Each セル In Range("x8:x1007")         '色を変更したい範囲を設定
        検索開始位置 = 1                    '「検索開始位置」変数を初期化
        Do                                  '検索文字を発見した位置を繰り返し調べる
          発見位置 = InStr(検索開始位置, セル.Text, 指定キーワード)
          If 発見位置 = 0 Then Exit Do    '発見できなかったらループから脱出
          With セル   '発見できたセルで文字の色とサイズを設定
            .Characters(発見位置, 検索文字長).Font.ColorIndex = 色 '同じ色にする
'            .Characters(発見位置, 検索文字長).Font.Size = 文字サイズ '同じ文字サイズにする
            .Characters(発見位置, 検索文字長).Font.Bold = False '太字にする
'            .Characters(発見位置, 検索文字長).Font.Italic = True '斜体にする
          End With
            検索開始位置 = 発見位置 + 検索文字長    '「検索開始位置」を設定
        Loop
      Next
    End If
  Next

End Sub

