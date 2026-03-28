# A game based on Slay the Spire with a Dune theme 
*(And a little bit of Brazilian memes)*

This game was made by me for my programming subject at university as a final practical work. 
It is a deck-building card game implemented in C using the Allegro 5 library.

---

## Game Controls

The game is entirely controlled via the keyboard. Below is the list of keys used and their functions:

### Main Menu
* **UP / DOWN Arrows**: Move the selection between menu options.
* **ENTER**: Confirm the selected option to start the game.

### Combat and Gameplay
* **LEFT / RIGHT Arrows**: Navigate through the cards in your hand or select an enemy target.
* **ENTER**: 
  * Play the currently selected card.
  * Confirm the target enemy for an attack.
  * Advance to the next round after the victory screen.
* **ESC (Escape)**: 
  * Cancel the target selection of an attack, returning to your card hand.
  * End the player's turn, passing the action to the enemies.

### General Commands and Debug (Cheats)
* **Q**: Quit and close the game at any time.
* **SPACE**: Cheat that triggers an instant victory for the current round.
* **X**: Debug cheat that reduces the player's HP to 1 and sets the shield to 0.

---

## How to Compile and Run

This project uses a `Makefile` to simplify the build and execution process, supporting both Linux and macOS environments.

### Prerequisites
To compile and play, you need the `gcc` compiler and the **Allegro 5** library installed on your system. The game requires the following Allegro packages:
* `allegro-5`
* `allegro_main-5`
* `allegro_font-5`
* `allegro_image-5`
* `allegro_primitives-5`
* `allegro_audio-5`
* `allegro_acodec-5`

### Step-by-Step (Makefile Commands)

1. **Compile the game**:
   Open the terminal in the root folder of the project and run:
   ```bash
   make

2. **Run the game**:
   Once compiled, you can start the game by using the Makefile run command:
   ```bash
   make run

3. **Clean the build**:
   To remove the generated executable files and clean your directory, run:
   ```bash
   make clean

---

Enjoy!
