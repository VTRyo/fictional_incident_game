# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a TyranoScript visual novel game project called "プロダクトの危機を救え!" (Save the Product Crisis!). TyranoScript is a Japanese visual novel engine that generates HTML5 games using JavaScript and CSS.

## Project Structure

- `index.html` - Main entry point that loads the TyranoScript engine
- `data/` - Game content directory
  - `scenario/` - Story scripts in .ks format (KAG Script)
  - `bgimage/` - Background images 
  - `fgimage/` - Foreground images (characters, UI elements)
  - `bgm/` - Background music files
  - `sound/` - Sound effects
  - `system/` - System configuration files
- `tyrano/` - TyranoScript engine files (do not modify)
- `studio_config.json` - TyranoStudio project configuration

## Development Commands

### Testing the Game
- Open `index.html` in a web browser to test the game
- For TyranoStudio users: Use the preview function within TyranoStudio

### Building for Distribution
- For web deployment: Upload the entire project directory to a web server
- For mobile apps: Use PhoneGap/Cordova with the project files
- For desktop apps: Use TyranoScript's packaging tools

## Scenario Scripting

### Key Files
- `data/scenario/first.ks` - Initial game entry point
- `data/scenario/scene1.ks` - Main game scene
- `data/scenario/title.ks` - Title screen
- `data/scenario/config.ks` - Configuration menu

### Script Syntax
- Uses KAG-style tag syntax: `[tag parameter=value]`
- Text is written directly, with `[p]` for page breaks and `[r]` for line breaks
- Character dialogue: `#character_name` followed by dialogue text
- Comments start with `;`

## Configuration

### Main Config File
- `data/system/Config.tjs` - Primary game configuration
- Key settings include screen size (1280x720), save system, audio volumes
- Character positioning, text styling, and game behavior

### Debug Mode
- Set `debugMenu.visible = true` in Config.tjs for development
- Remember to set to `false` for release builds

## Asset Management

### Images
- Background images: 1280x720 recommended
- Character images: PNG with transparency
- UI elements in `data/image/` subdirectories

### Audio
- BGM: .ogg and .m4a formats supported
- Sound effects in `data/sound/`

## Character System

Characters are defined in scenario files using:
- `[chara_new]` - Register new character
- `[chara_face]` - Register facial expressions
- `[chara_show]` - Display character on screen
- Character images stored in `data/fgimage/chara/[character_name]/`

## Reference Documentation

- https://tyrano.jp/tag/ - Official TyranoScript tag documentation


# ティラノスクリプト インシデントゲーム開発プロンプト

## 前提条件・技術スタック

あなたはティラノスクリプト（TyranoScript）を使って架空のインシデント対応ゲームを開発します。

### ティラノスクリプトについて
- ノベルゲーム作成エンジン
- HTML5ベース、ブラウザで動作
- シナリオはKAGタグで記述
- data/scenario/内にksファイルを配置
- 画像はdata/image/内に配置
- 音声はdata/sound/内に配置

### 基本ディレクトリ構造
```
project/
├── data/
│   ├── scenario/
│   │   ├── first.ks (メインシナリオ)
│   │   └── scene1.ks (サブシナリオ)
│   ├── image/
│   │   ├── system/ (UI画像)
│   │   ├── fgimage/ (キャラクター立ち絵)
│   │   ├── bgimage/ (背景画像)
│   │   └── other/ (その他画像)
│   └── sound/
│       ├── bgm/ (BGM)
│       └── se/ (効果音)
├── tyrano/
└── index.html
```

### 主要なKAGタグ
- `[bg storage="背景ファイル名"]` - 背景変更
- `[chara_new name="キャラ名" storage="画像ファイル"]` - キャラクター定義
- `[chara_show name="キャラ名"]` - キャラクター表示
- `[playse storage="音声ファイル"]` - 効果音再生
- `[link target="*ラベル名"]選択肢テキスト[endlink]` - 選択肢
- `[s]` - 停止（選択肢待ち）
- `*ラベル名` - ジャンプ先
- `[jump target="ラベル名"]` - ジャンプ
- `[eval exp="変数名=値"]` - 変数操作
- `[if exp="条件"]...[endif]` - 条件分岐

### メッセージボックス設定（重要）
**正しい記法**:
```
;メッセージボックスの基本設定
[position layer=message0 width=1000 height=200 top=500 left=140]
[position layer=message0 page=fore frame="frame.png" margint="45" marginl="50" marginr="70" marginb="60"]

;メッセージボックスの表示/非表示
@layopt layer=message0 visible=true    ;表示
@layopt layer=message0 visible=false   ;非表示
```

**重要な注意点**:
- `@position`ではなく`[position]`を使用
- `layer=message0`が基本レイヤー
- `page=fore`でフロントレイヤーに配置
- `frame="frame.png"`でメッセージボックスの背景画像
- `margint/marginl/marginr/marginb`でテキスト表示領域の余白調整
- 設定は段階的に行う：position設定→layoptで表示制御

**応用例**:
```
;キャラクター名表示エリア
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=510]
[chara_config ptext="chara_name_area"]

;全画面表示への切り替え
[position layer="message0" left=20 top=40 width=1200 height=660 page=fore visible=true]

;縦書き表示
[position vertical=true layer=message0 page=fore margint="45" marginl="0" marginr="70" marginb="60"]
```

## 実際のscene1.ksの書き方パターン

### 基本構造
```
;ティラノスクリプトサンプルゲーム

[cm]
[clearfix] 
[start_keyconfig]

[bg storage="背景画像.jpg" time="100"]
@showmenubutton
```

### メッセージウィンドウ設定パターン
```
;メッセージウィンドウの設定
[position layer=message0 width=1000 height=200 top=500 left=140]
[position layer=message0 page=fore frame="frame.png" margint="45" marginl="50" marginr="70" marginb="60"]
[position layer="message0" opacity="230" left=160 top=500 width=1000 height=200 page=fore visible=true]

;メッセージウィンドウの表示
@layopt layer=message0 visible=true

;キャラクターの名前が表示される文字領域
[ptext name="chara_name_area" layer="message0" color="white" size=28 bold=true x=180 y=505]
[chara_config ptext="chara_name_area"]
```

### キャラクター定義パターン
```
;キャラクター登録
[chara_new name="Tsumugi" storage="chara/tsumugi/tsumugi_stand.png" jname="Tsumugi"]

;表情登録
[chara_face name="Tsumugi" face="default" storage="chara/tsumugi/tsumugi_stand.png"]
[chara_face name="Tsumugi" face="he_mouth" storage="chara/tsumugi/tsumugi_he.png"]
[chara_face name="Tsumugi" face="close_mouth" storage="chara/tsumugi/tsumugi_close_mouth.png"]

;キャラクター設定
[chara_config brightness=30 talk_focus=brightness]
```

### キャラクター表示・操作パターン
```
;キャラクター登場
[chara_show name="Tsumugi" width="550" top="100" time=1000]

;表情変更
[chara_mod name="Tsumugi" face="he_mouth" time=0]

;キャラクター名:表情 の直接指定
#Tsumugi:close_mouth
```

### 会話・演出パターン
```
;基本テキスト色設定
[font color="black"]

;キャラクター会話
#Tsumugi
[chara_mod name="Tsumugi" face="default" time=0]
;コメント（日本語原文）
English text here.[p]

;改行とページ送り
Text here[r]
More text[p]

;待機
[wait time=1000]

;画面効果
[quake count="5" time="2000"]

;動的テキスト表示
[mtext text="ざわ･･" layer="0" x="300" y="250" size="70" in_effect="wobble" time="0" color="0x000000" edge="0xffffff" wait="false"]
```

### 日英バイリンガル対応パターン
```
#キャラクター名
;日本語原文をコメントで記録
English translation text.[p]
```

### 感情表現

- 日本語原文からキャラクターの感情を読み取り、chara_modを挿入すること

```
;Tsumugiの感情表現の例

;表情:通常
[chara_mod name="Tsumugi" face="default" time=0]

;表情:驚き
[chara_mod name="Tsumugi" face="he_mouth" time=0]

;表情:驚いてフリーズしている
[chara_mod name="Tsumugi" face="close_mounth" time=0]

;表情:とぼけた驚き
[chara_mod name="Tsumugi" face="e_eye_circle" time=0]

;表情:困って追い込まれている
[chara_mod name="Tsumugi" face="ii_eye_close" time=0]

;表情:我に返る
[chara_mod name="Tsumugi" face="giza_eye_open" time=0]

;表情:怒り
[chara_face name="Tsumugi" face="mu_anger" storage="chara/tsumugi/tsumugi_mu_anger.png"]
```

### キャラクター会話パターン

- Hacker, Zundamon
  - 一人称「ボク」
  - 相手「オマエ」「みんな」
  - 語尾「〜なのだ」「〜のだ」
  - 口癖「ほんまごめん」

- Tsumugi
  - 一人称「あーし」
  - ギャルっぽい話し方明るく元気で人懐っこい
  - 可愛い
  - 優しいけどちょっと生意気

