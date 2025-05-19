<h1 align="center">TOP-Hangman - Readme</h1>
<p align="center">
  <strong>
    My solution for project from <a href="https://www.theodinproject.com" target="_blank">The Odin Project (TOP)</a> full-stack curriculum
  </strong>
</p>
<div align="center">
  <a href="https://www.theodinproject.com">
    <img src="_for_readme/banner.png">
  </a>
</div>

<br>

# Table of Contents
* [The Odin Project :thinking:](#the-odin-project-thinking)
  * [What is it](#what-is-it)
  * [Is it worth doing](#is-it-worth-doing)
* [Overview :sparkles:](#overview-sparkles)
  * [About](#about)
  * [Features](#features)
  * [Technologies](#technologies)
  * [Setup](#setup)
* [Details :scroll:](#details-scroll)
  * [User interface](#user-interface)

<br>

# The Odin Project :thinking:

## What is it  
[The Odin Project](https://www.theodinproject.com) is a free, open-source curriculum that teaches web development from the ground up. It covers HTML, CSS, JavaScript, Ruby, Git, React, and back-end technologies like Node.js and Ruby on Rails, offering a structured path from beginner to job-ready developer. The curriculum includes hands-on projects, coding exercises, and real-world applications to reinforce learning.

## Is it worth doing  
The Odin Project is an excellent resource for self-taught developers looking for a structured and comprehensive learning path. It encourages active learning through projects and collaboration with the community. However, since it requires self-discipline and problem-solving skills, those who prefer guided instruction with direct mentorship might find it challenging.

<br>

# Overview :sparkles:

## About
This project is my solution for [Project: Hangman](https://www.theodinproject.com/lessons/ruby-hangman) on [Ruby Course](https://www.theodinproject.com/paths/full-stack-ruby-on-rails/courses/ruby) from [The Odin Project (TOP)](https://www.theodinproject.com) which is an open-source curriculum for learning full-stack web development.

<br>

![preview](/_for_readme/preview.png)

## Technologies
Languages:
- Ruby

Libraries:
- [Colorize](https://rubygems.org/gems/colorize/versions/1.1.0)

Programs:
- [VSCode](https://code.visualstudio.com)
- [ShareX](https://getsharex.com)
- [GIMP](https://www.gimp.org)

## Features
### Project requirements
✅ Load the `google-10000-english-no-swears.txt` dictionary.  
✅ Randomly select a secret word (5–12 characters) when a new game starts.  
✅ Display remaining incorrect guesses allowed and show current word progress (e.g., `_ r o g r a _ _ i n g`).  
✅ Track and display letters already guessed (both correct and incorrect).  
✅ Allow the player to guess one letter per turn (case‑insensitive) and update the display accordingly.  
✅ End the game with a win if the word is guessed or a loss if guesses run out.  
✅ Provide an option at the start of any turn to save the game state (serialize objects).  
✅ On program launch, offer the player the choice to load a saved game and resume from that point.  

### Additions
- Drawing hangman stick figure using ASCII characters

## Setup
- Download this repository
- Open folder in terminal
- Run `ruby ./lib/main.rb`

<br>

# Details :scroll:

## User interface

### Game start  
When the game begins, a random word is selected from the dictionary, the initial Hangman ASCII representation is displayed, and the player is prompted to guess a letter.  
![game start](/_for_readme/UI/game_start.png)

---

### Hangman ASCII representation  
The player can make up to 10 mistakes before the full hangman is drawn and the game is lost.  
![stickman](/_for_readme/UI/stickman.png)

---

### Guessing the word  
The player must continue guessing letters to reveal the hidden word. After each guess, they receive visual feedback:  
- The hangman drawing updates to show how many mistakes remain.  
- Already guessed letters are displayed—**green** for correct, **red** for incorrect.  
- The word is shown with correctly guessed letters in place.  
![game](/_for_readme/UI/game.png)

If the user input is invalid (e.g., non-letter characters, multiple letters), it is ignored until a valid letter is entered. If a full word is entered, only the first letter is taken.  
![wrong input](/_for_readme/UI/wrong_input.png)

---

### Saving the game  
The player can save the game at any time and resume it in a future session. Only one save file is supported, so saving again will overwrite the previous save.  
![game save](/_for_readme/UI/game_save.png)


