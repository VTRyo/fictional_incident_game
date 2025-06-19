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