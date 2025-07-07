[cm]
[clearfix]
[start_keyconfig]

[bg storage="question.jpg" time="100"]
[playbgm storage="question_bgm.mp3" loop=true volume=30]

;メニューボタンの表示
@showmenubutton

;メッセージウィンドウの設定（最初は非表示）
[position layer=message0 width=1000 height=200 top=500 left=140]
[position layer=message0 page=fore frame="frame.png" margint="45" marginl="50" marginr="70" marginb="60"]
[layopt layer=message0 visible=false]

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=505]
[chara_config ptext="chara_name_area"]

;ゲーム完了確認変数の初期化
[eval exp="f.game_completed = false"]

;question.pngのみ表示、ボタンが押されるまで待機
;見えないクリックエリアを画面全体に配置
[clickable name="initial_click" target="*show_question_first_time" x="0" y="0" width="1280" height="720"]

[s]

*show_question_first_time
;初回のボタンが押されたら質問を表示
[cm]
[clearfix]

;メッセージウィンドウを表示
[layopt layer=message0 visible=true]

;フォント設定
[font color="white" size="30" edge="black" edge_size="2"]

もうチャレンジ終了でいいのだ？[p]

;選択肢をリンクで表示
[link target="*check_completion"]▷ いいわよ[endlink]　　[link target="*continue_game"]▷ まだやってる![endlink]

[s]

*check_completion
;ゲーム完了確認
[eval exp="f.game_completed = true"]
[cm]
;ボタンを非表示
[clearfix]

;ゲームが完了していればエンディングへ
[jump storage="ending.ks" cond="f.game_completed == true"]

*continue_game
;ゲームを続行 - メッセージウィンドウを閉じて待機
[cm]
[clearfix]

;メッセージウィンドウを非表示
[layopt layer=message0 visible=false]

;question.pngはそのまま維持、ボタンが押されるまで待機
;見えないクリックエリアを画面全体に配置
[clickable name="screen_click" target="*show_question_again" x="0" y="0" width="1280" height="720"]

[s]

*show_question_again
;画面がクリックされたら再度質問を表示
[cm]
[clearfix]

;メッセージウィンドウを再表示
[layopt layer=message0 visible=true]

;フォント設定
[font color="white" size="30" edge="black" edge_size="2"]

ゲームを終了しますか？[p]

;選択肢をリンクで再表示
[link target="*check_completion"]ゲーム終了[endlink]　　[link target="*continue_game"]ゲーム続行[endlink]

[s]
