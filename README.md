# Dawn of War – Gameplay Utility Script

A lightweight Lua script for **Warhammer 40,000: Dawn of War** that adds convenient gameplay utilities through keyboard shortcuts.

## Features

- **Fog Toggle** – Toggle the game's fog effect.
- **Resource Generator** – Instantly grant resources based on the player's race.
- **Player Control Switch** – Switch between player and CPU control.
- **Simulation Speed Control** – Quickly change the simulation speed.
- **Fog of War Toggle** – Reveal the map or restore the fog of war.
- **Screen Mode Toggle** – Show or hide the taskbar and in-game messages.
- **Instant Build Toggle** – Enable or disable instant construction.

## Keyboard Shortcuts

| Key  | Action                     |
| ---- | -------------------------- |
| `F1` | Toggle Fog                 |
| `F2` | Give Resources             |
| `F3` | Switch Player Control      |
| `F4` | Set Simulation Speed to 5  |
| `F5` | Set Simulation Speed to 8  |
| `F6` | Set Simulation Speed to 40 |
| `F7` | Toggle Fog of War          |
| `F8` | Toggle Screen Mode         |
| `F9` | Toggle Instant Build       |

## Resource System

The resource generator automatically detects the player's race and grants the appropriate resources.

| Race              | Resources                 |
| ----------------- | ------------------------- |
| Necrons           | Power                     |
| Dark Eldar        | Requisition, Power, Souls |
| Sisters of Battle | Requisition, Power, Faith |
| All other races   | Requisition, Power        |

### Resource Amounts

| Resource    |  Amount |
| ----------- | ------: |
| Requisition | 100,000 |
| Power       | 100,000 |
| Souls       |  10,000 |
| Faith       |  10,000 |

Resource amounts can be customized in the `RESOURCE_AMOUNT` table.

## Configuration

The script uses two tables to manage resources:

- `RESOURCES` defines which resources each race receives.
- `RESOURCE_AMOUNT` defines the amount granted for each resource.

New races and resource amounts can be added by modifying these tables.

## Requirements

- Warhammer 40,000: Dawn of War – Definitive Edition

## Installation

1. Clone or download this repository.
2. Place the Lua script in the game's directory, usually:

   `Steam\steamapps\common\Dawn of War - Definitive Edition`

3. Launch the game. The script loads automatically.
5. Use the assigned keyboard shortcuts in-game.

## Notes

- Resource amounts are configurable.
- Simulation speed values are predefined through the keyboard bindings.
- Toggle functions assume their initial states match the game's initial settings.
