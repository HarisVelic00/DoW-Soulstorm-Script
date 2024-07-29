# DoW-Soulstorm-Script
Lua script for gameplay and testing

- **F1: Toggle Fog of War**
  - **Function:** `toggle_FOG()`
  - **Description:** Toggles the visibility of the fog of war on the map. This function allows players to either reveal or conceal the areas of the map that are normally obscured, aiding in strategic planning and testing.

- **F2: Give Resources**
  - **Function:** `GiveResources()`
  - **Description:** Provides a set amount of resources to the current player. If the player’s race is Necron, it gives 20,000 Power. For other races, it grants 10,000 Requisition and 10,000 Power, facilitating quick testing of different game states.

- **F3: Switch Player Control**
  - **Function:** `switch_player_control()`
  - **Description:** Switches control between the CPU and the local player. This allows testers to take control of a CPU player or delegate control to the AI, useful for testing different gameplay dynamics and strategies.

- **F4: Set Game Speed to 5**
  - **Function:** `setsimrate(5)`
  - **Description:** Sets the game speed to a slow rate, where `5` represents the simulation rate. This slower speed is ideal for detailed observation and analysis of game mechanics.

- **F5: Set Game Speed to 12**
  - **Function:** `setsimrate(12)`
  - **Description:** Adjusts the game speed to a moderate rate, where `12` is the simulation rate. This setting balances between normal gameplay pace and faster analysis.

- **F6: Set Game Speed to 30**
  - **Function:** `setsimrate(30)`
  - **Description:** Increases the game speed to a fast rate, where `30` denotes the simulation rate. This faster speed is useful for quick testing and observing long-term game effects in a shorter time.

- **F7: Toggle Fog of War Visibility**
  - **Function:** `toggle_FOW()`
  - **Description:** Toggles the fog of war visibility. When activated, it reveals the entire map, and when deactivated, it resets the fog of war to its default state, which helps in evaluating strategic elements and player vision.

- **F8: Toggle Screen Mode**
  - **Function:** `toggle_screenmode()`
  - **Description:** Switches between full-screen and windowed mode, and controls the visibility of various UI elements and system information. When toggled off, it hides non-essential elements for a clearer view and better focus during testing.
