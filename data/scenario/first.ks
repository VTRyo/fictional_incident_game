;一番最初に呼び出されるファイル

[title name="プロダクトの危機を救え!"]

[stop_keyconfig]


;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ

*start

;メッセージボックスを表示
@layopt layer=message0 visible=true

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

[cm]
[position layer=message0 width=1000 height=200 top=300 left=140]
;プロダクトの危機を救え！へようこそ
Welcome to "Save the Product Crisis!"[l][r]
;この動画は、今から皆さんが体験するワークショップのイントロダクションです。
This video is an introduction to the workshop you are about to experience.[l][r]
;あなたはプロダクトの危機を救うため、みなさんで議論しながら、解決策を考えていきます。
You will work together to discuss and come up with solutions to save the product crisis.[p]
;それでは、早速始めましょう！
Let's get started right away![l][r]
;scene1.ksに移動
@jump storage="scene1.ks"
