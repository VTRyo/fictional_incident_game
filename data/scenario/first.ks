;一番最初に呼び出されるファイル

[title name="プロダクトの危機を救え!"]

[stop_keyconfig]


;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ

;メッセージボックスは非表示
@layopt layer="message" visible=false

*start
[position layer=message0 width=1200 height=660 top=400 left=35 ]
[position layer=message0 page=fore frame="frame.png" margint="55" marginl="50" marginr="70" marginb="60"]

[bg storage="office_day.jpg"]

[position layer="message0" visible=true]

[cm]
メッセージウィンドウが下に表示されましたね？[r][l]
ここにメッセージが表示されています。[r][l]



;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

;scene1.ksに移動
@jump storage="scene1.ks"
