[cm]
[clearfix]
[start_keyconfig]


[bg storage="office_night_on.jpg" time="100" layer="0"]

;メニューボタンの表示
@showmenubutton


;メッセージウィンドウの設定
[position layer=message0 width=1000 height=200 top=500 left=140]
[position layer=message0 page=fore frame="frame.png" margint="45" marginl="50" marginr="70" marginb="60"]
[position layer="message0" opacity="230" left=160 top=500 width=1000 height=200 page=fore visible=true]
;メッセージボックスの設定

;文字が表示される領域を調整
[position layer=message0 page=fore margint="45" marginl="50" marginr="70" marginb="60"]


;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=505]

;上記で定義した領域がキャラクターの名前表示であることを宣言（これがないと#の部分でエラーになります）
[chara_config ptext="chara_name_area"]

;このゲームで登場するキャラクターを宣言
;zunda
[chara_new  name="Zunda" storage="chara/zunda/zunda_stand.png" jname="Zundamon" reflect="true" ]
[chara_face name="Zunda" face="default" storage="chara/zunda/zunda_stand.png" reflect="true"]

;tsumugi 感情表現
[chara_new  name="Tsumugi"  storage="chara/tsumugi/tsumugi_stand.png" jname="Tsumugi" ]
[chara_face name="Tsumugi" face="default" storage="chara/tsumugi/tsumugi_stand.png"]
[chara_face name="Tsumugi" face="he_mouth" storage="chara/tsumugi/tsumugi_he.png"]
[chara_face name="Tsumugi" face="close_mouth" storage="chara/tsumugi/tsumugi_close_mouth.png"]
[chara_face name="Tsumugi" face="giza_eye_open" storage="chara/tsumugi/tsumugi_giza_eye_open.png"]
[chara_face name="Tsumugi" face="ii_eye_close" storage="chara/tsumugi/tsumugi_ii_eye_close.png"]
[chara_face name="Tsumugi" face="e_eye_circle" storage="chara/tsumugi/tsumugi_e_eye_circle.png"]
[chara_face name="Tsumugi" face="mu_anger" storage="chara/tsumugi/tsumugi_mu_anger.png"]

;Hacker
[chara_new name="Hacker" storage="chara/game_master/game_master.png" jname="Mystery Hacker" ]

;発話者以外の明度を暗くする設定
[chara_config brightness=30 talk_focus=brightness]

;Zundamonの反転設定を維持
[chara_config name="Zunda" reflect="true"]

;キャラクター登場
[chara_show  name="Tsumugi" width="550" top="100" time=1000]
[font color="black" size=40 edge="white" edge_size=2]

;音声設定
[voconfig sebuf=2 name="Tsumugi" vostorage="tsumugi/tsumugi_1_{number}.ogg" number=1 volume=70 wait=false]

[vostart]

#Hacker
;くっ、意外とやるのだ。

#Tsumugi
;ふふん。あーしだってやればできるってことだよ!

#Hacker
;ぐぬぬぬぬぬぬぬぬぬ

#Tsumugi
;……てか、もういいよ。そんな格好してなくても。暑いでしょ

#Hacker
;ななななななな何のことなのだ

#Tsumugi
;キミが言いたいことはわかったから。あーしたち、ちょっと心の距離があったのかな……（悲しい顔。頬を赤く）

#Hacker
;（へっ？ なんなのだ。ちょっといい雰囲気なのだ……。これは正体を明かさないともったいないのだ）

[chara_hide name="Hacker" time=1000]
[chara_show name="Zunda" storage="chara/zunda/zunda_stand.png" time=1000 width="550" top="100" reflect="true"]

#Zundamon
[chara_mod name="Zunda" reflect="true"]
ほんまごめん

#Tsumugi
;ずんだもん……
;やっぱずんだもんじゃん!! 何この手の込んだドッキリ!! もー許さないんだから!!


[quake count="5" time="2000"]
[p]

#Zundamon
[chara_mod name="Zunda" reflect="true"]
なんなのだ! せっかくいい雰囲気だと思ったからフードを取ったのにあんまりなのだ!![p]

[chara_hide name="Zunda" time=500]

#Tsumugi
あ! 逃げるな! オフィス閉めるのあーしなんだから!

[vostop]

[chara_hide name="Tsumugi" time=1500]

[wait time=1000]

;メッセージボックス非表示
[layopt layer=message0 visible=false]

[wait time=500]

;背景を黒にフェードアウト
[mask time=1000]
[bg storage="office_night_off.jpg" time=2000]
[mask_off time=1000]

@jump storage="staff.ks"
