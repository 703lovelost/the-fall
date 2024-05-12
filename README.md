# Description
__The Fall__ is a simple quick-time action game made as an university course project.

This project is using two open-source solutions:
- CdM-8 Mark 5 Processor (https://github.com/cdm-processors/cdm-devkit/tree/0.2.0)
- Logisim by Carl Burch (http://www.cburch.com/logisim/)

The Fall is distributing under the terms of the _GNU General Public License_ (see LICENSE).

The development team of The Fall highly supports any educational uses of it.

## Gameplay

As the game is started, the player’s goal is to pass through as much upgoing platforms as possible. Platforms can be only passed through the gaps in them. To reach the gaps, player can use A or D keys, allowing to move along the platforms.
Besides platforms, the lines of coins are moving upwards. To improve the score, the player should collect the coins.
Apart from coins, reaching the lower border of the display should also increase the score. 

As the game continues, the overall speed is increasing.
The game ends by pushing Enter button whilst the game is on or if the character has reached the upper border of the display.
Depending on how high is the player’s score, it can be shown on the leaderboard. The best 3 results gets automatically shown on the leaderboard.

Keys:
A - Left
D - Right
Enter - Start/End
Space - Pause

# How to open

Download the project and open 'TheFall.circ' using Logisim. To avoid library loading errors, keep all included .circ files in one directory.
Before playing, set the frequency at 512 Hz, enable both Simulation and Ticks.

After that, the game is available for comfortable play. Follow the instructions and enjoy the process!

_Aleksey S., Roman. T._
_2024_