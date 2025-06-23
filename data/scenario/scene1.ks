;ティラノスクリプトサンプルゲーム

[cm]
[clearfix]
[start_keyconfig]

[bg storage="office_day.jpg" time="100"]

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
[chara_new  name="Zunda" storage="chara/zunda/zunda_stand.png" jname="Zundamon"  ]

;tsumugi
[chara_new  name="Tsumugi"  storage="chara/tsumugi/tsumugi_stand.png" jname="Tsumugi" ]
[chara_face name="Tsumugi" face="default" storage="chara/tsumugi/tsumugi_stand.png"]
[chara_face name="Tsumugi" face="he_mouth" storage="chara/tsumugi/tsumugi_he.png"]
[chara_face name="Tsumugi" face="close_mouth" storage="chara/tsumugi/tsumugi_close_mouth.png"]
[chara_face name="Tsumugi" face="giza_eye_open" storage="chara/tsumugi/tsumugi_giza_eye_open.png"]
[chara_face name="Tsumugi" face="ii_eye_close" storage="chara/tsumugi/tsumugi_ii_eye_close.png"]
[chara_face name="Tsumugi" face="e_eye_circle" storage="chara/tsumugi/tsumugi_e_eye_circle.png"]

;Hacker
[chara_new name="Hacker" storage="chara/game_master/game_master.png" jname="Mystery Hacker" ]

;発話者以外の明度を暗くする設定
[chara_config brightness=30 talk_focus=brightness]

;キャラクター登場
[chara_show  name="Tsumugi" width="550" top="100" time=1000]
[font color="black"]


#Tsumugi
;よし。今日のリリース完了！
Good! I've completed release today.[p]

[quake count="5" time="2000"]

[mtext text="ざわ･･" layer="0" x="300" y="250" size="70" in_effect="wobble" time="0" color="0x000000" edge="0xffffff" wait="false" ]
[mtext text="ざわ･･" layer="0" x="900" y="300" size="70" in_effect="wobble" time="0" color="0x000000" edge="0xffffff"]

#Tsumugi:close_mouth
; [chara_mod name="Tsumugi" face="close_mouth" time=0]
;ん？　何？Slackからすごいたくさんメッセージが……
What's this? There are so many messages from Slack... [p]


#?
"Triggered: Cloud Service's SLO is violated!"[r]
"Please check the incident report in Slack!"[p]

#Tsumugi
[chara_mod name="Tsumugi" face="he_mouth" time=0]
;えっ、SLO違反？　そんなの聞いてないよ！どうしよ、そうだ！SREチーム、SREチームに連絡しなきゃ！
Huh? SLO violation? I didn't hear about that![p]

[chara_mod name="Tsumugi" face="close_mouth" time=0]
What should I do?[p]
[wait time=1000]
[chara_mod name="Tsumugi" face="giza_eye_open" time=0]
Oh! I need to contact the SRE team, the SRE team![p]

#?
;ゆっくり点を表示する
.........[r]
[wait time=1000]
.........[p]

#Tsumugi
[chara_mod name="Tsumugi" face="ii_eye_close" time=0]
;誰も連絡が取れない！どうしようこのままじゃサービスが……
No one is available to contact! What should I do?[r] The service will be... [p]

[chara_show  name="Hacker" width="550" top="100" time=1000]

#Hacker
;お困りのようですね。
It seems you're in trouble.[p]

#Tsumugi
[chara_mod name="Tsumugi" face="he_mouth" time=0]
;だ、誰！？ モニターが乗っ取られてる！？
Who are you?! My monitor is being hijacked!?[p]

#Hacker
;やあ。僕は今、おまえたちのサービスをハッキングし、そしてロックしたのだ
Nice to meet you. I have now hacked and locked your service.[p]

#Tsumugi
[chara_mod name="Tsumugi" face="giza_eye_open" time=0]
;な、なんでそんなことを……。このままじゃユーザさんが困るの。何が目的？ それより、SREチームが全然応答しない……！
Why would you do such a thing?[r]
Users will be in trouble if this continues.[p]
What is your purpose? Moreover, the SRE team is not responding at all...![p]

#Hacker
;無駄なのだ。おまえたちの自慢のSREは僕があずかっているのだ
I have taken your proud SRE team under my control.[p]

#Tsumugi
[chara_mod name="Tsumugi" face="close_mouth" time=0]
;えっ、そんな！じゃあこのサービスの復旧ができないってこと？
Huh? Does that mean we can't restore the service?[p]

#Hacker
;何を言ってるのだ！おまえがいるのだ！
What are you talking about? You are here![p]

#Tsumugi
[chara_mod name="Tsumugi" face="e_eye_circle" time=0]
;えっ、私が？ でも私はSREじゃないし、何もわからないよ！
Huh? Me? But I'm not an SRE, and I don't know anything about it![p]

#Hacker
;そんなんじゃあこのサービスは返せないのだ！
I can't restore the service with that attitude![p]
;仕方ないのだ、おまえにチャンスをやるのだ
Well, I don't have a choice. I'll give you a chance.[p]
