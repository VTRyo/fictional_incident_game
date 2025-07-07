[stopbgm]
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
[chara_new  name="Zunda" storage="chara/zunda/zunda_stand.png" jname="Zundamon"]
[chara_face name="Zunda" face="default" storage="chara/zunda/zunda_stand.png" ]
[chara_face name="Zunda" face="shock" storage="chara/zunda/zundamon_shock.png"]

;tsumugi 感情表現
[chara_new  name="Tsumugi"  storage="chara/tsumugi/tsumugi_default.png" jname="Tsumugi" ]
[chara_face name="Tsumugi" face="default" storage="chara/tsumugi/tsumugi_default.png"]
[chara_face name="Tsumugi" face="he_mouth" storage="chara/tsumugi/tsumugi_he.png"]
[chara_face name="Tsumugi" face="close_mouth" storage="chara/tsumugi/tsumugi_close_mouth.png"]
[chara_face name="Tsumugi" face="giza_eye_open" storage="chara/tsumugi/tsumugi_giza_eye_open.png"]
[chara_face name="Tsumugi" face="ii_eye_close" storage="chara/tsumugi/tsumugi_ii_eye_close.png"]
[chara_face name="Tsumugi" face="e_eye_circle" storage="chara/tsumugi/tsumugi_e_eye_circle.png"]
[chara_face name="Tsumugi" face="mu_anger" storage="chara/tsumugi/tsumugi_mu_anger.png"]
[chara_face name="Tsumugi" face="i_smile" storage="chara/tsumugi/tsumugi_i_smile.png"]
[chara_face name="Tsumugi" face="u_jitome" storage="chara/tsumugi/tsumugi_u_jitome2.png"]

;Hacker
[chara_new name="Hacker" storage="chara/game_master/game_master.png" jname="Mystery Hacker" ]

;発話者以外の明度を暗くする設定
[chara_config brightness=30 talk_focus=brightness]

;キャラクター登場
[chara_show  name="Tsumugi" width="550" top="100" time=1000]
[font color="black" size=40 edge="white" edge_size=2]
[chara_show name="Hacker" width="550" top="100" time=1000]

;音声設定
[voconfig sebuf=2 name="Tsumugi" vostorage="tsumugi/tsumugi_2_{number}.ogg" number=1 volume=70 wait=false]
[voconfig sebuf=2 name="Hacker" vostorage="zunda/zunda_2_{number}.ogg" number=2 volume=70 wait=false]
[voconfig sebuf=2 name="Zunda" vostorage="zunda/zundamon_{number}.ogg" number=1 volume=70 wait=false]

[vostart]

#Hacker
;やられたのだ、悔しいのだ！
I got beaten! This is so frustrating![p]

#Tsumugi
[chara_mod name="Tsumugi" face="i_smile" time=0]
;ふふん。あーしだってやればできるってことだよ!
Hehe! I can do it when I put my mind to it![p]

#Tsumugi
[chara_mod name="Tsumugi" face="close_mouth" time=0]
;……てか、もういいよ。そんな格好してなくても。暑いでしょ
...By the way, you don't need to keep wearing that outfit. It must be hot, right?[p]

#Hacker
;ななななななな何のことなのだ
Wh-wh-what are you talking about?[p]

#Tsumugi
[chara_mod name="Tsumugi" face="u_jitome" time=0]
;キミが言いたいことはわかったから。
I understand what you wanted to say.[p]
#Tsumugi
;あーしたち、ちょっと心の距離があったのかな……
Maybe... we had a bit of distance between us...[p]

#Hacker
;（へっ？ なんなのだ。ちょっといい雰囲気なのだ……。
(Huh? What's this? This is getting kind of romantic...[p]
#Hacker
;これは正体を明かさないともったいないのだ）
I'd be wasting this chance if I don't reveal who I am.)[p]

[chara_hide name="Hacker" time=100]
[chara_show name="Zunda" storage="chara/zunda/zundamon_default.png" time=1000 width="550" top="100"]

#Zundamon
[chara_mod name="Zunda"]
;ほんまごめん
Yeah, my bad. Sorry, sorry.[p]

[quake count="5" time="2000" wait=false]

#Tsumugi
[chara_mod name="Tsumugi" face="ii_eye_close" time=0]
;ずんだもん……
;やっぱずんだもんじゃん!! 何この手の込んだドッキリ!! もー許さないんだから!!
Zundamon...[p]
#Tsumugi
I knew it was you, Zundamon!! What kind of elaborate prank is this?! I won't forgive you!![p]


#Zundamon
[chara_mod name="Zunda" face="shock" time=0]
;なんなのだ!
What's with that reaction?![p]
#Zundamon
;せっかくいい雰囲気だと思ったからフードを取ったのに
I thought we had a good vibe going, so I took off my hood, and that's how you react?[p]
#Zundamon
;あんまりなのだ!!
That's just not fair![p]

[chara_hide name="Zunda" time=500]

#Tsumugi
;あ! 逃げるな!
[chara_mod name="Tsumugi" face="mu_anger" time=0]
Ah! Don't run away![p]
#Tsumugi
;オフィス閉めるのあーしなんだから!
[chara_mod name="Tsumugi" face="ii_eye_close" time=0]
I'm the one who has to close the office![p]

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
