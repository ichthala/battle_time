battle_time
===========

The assignment was to write a program that performs one of 8 or more pre-set calculations, with the operation and parameters chosen by the user.

This short script is an RPG-inspired battle turn that lets the user select character stats and execute one battle attack. Based on the selected stats and attack, the program calculates the damage the user does to his opponent (if his attack succeeds at all!).

The damage done by the attack can be anywhere from 0 to 100. Damage is based on one or two stats multiplied by a luck modifier. The luck modifier is a random number between 0 and the Luck stat (inclusive).

Some attacks have a binary outcome (success or failure). In these cases, the outcome is determined by comparing the damage value to 50. 50 or greater damage leads to a successful attack.

Next steps: adding a limit to total skill points; turning it into a full battle; adding an option to heal damage.

It also may be worth considering whether the damage is too greatly dependent on the Luck stat.