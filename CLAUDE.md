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
