# CS574_Software_Quality_Project
Final Project Repo for CS574 Software Quality Spring 2020

Final Submission Readme:
--------------------------
Location of files we added.
JavaMOP:
./Game-master/src/game/debug/super_initialization.mop
./Game-master/src/game/debug/menu_bar_creation.mop
./Game-master/src/game/framework/start_end.mop
./Game-master/src/game/framework/game_input.mop
./Game-master/src/game/framework/game_initialization.mop

Monitor .aj files:
./Game-master/src/game/debug/super_initializationMonitorAspect.aj
./Game-master/src/game/debug/menu_bar_creationMonitorAspect.aj
./Game-master/src/game/framework/game_initializationMonitorAspect.aj
./Game-master/src/game/framework/game_inputMonitorAspect.aj
./Game-master/src/game/framework/start_endMonitorAspect.aj

TSL related files:
./Game-master/src/game/framework/vector2.tsl.tsl (this is the result of running tsl on vector2.tsl)
./Game-master/src/game/framework/vector2.tsl
./Game-master/src/game/framework/create_test_frames_vector2.pl (parses vector2.tsl.tsl and generates TestVector2.java)

.java files created:
./Game-master/src/game/framework/TestVector2.java (generated unit tests)
./Game-master/src/game/framework/FuncitonTests.java (started writing unit tests by hand)
./Game-master/src/game/debug/TestFrameworkMenu.java (game created for testing menu creation)

JML:
The JML is spread throughout the code. You can find it in the following files (may not be comprehensive):
./Game-master/src/game/debug/PerformanceTiming.java
./Game-master/src/game/debug/TestFramework.java
./Game-master/src/game/debug/TestFrameworkMenu.java
./Game-master/src/game/framework/Game.java
./Game-master/src/game/framework/GameTime.java
./Game-master/src/game/gui/MenuBar.java
./Game-master/src/game/gui/MenuItem.java
./Game-master/src/game/gui/Menu.java
./Game-master/src/game/input/KeyboardInput.java

Those who can see repo:
--------------------------
Andrew Graff
Hailee Kiesecker
Elena Sherman --ensure invitation is sent to her github esherman77

Potential Projects:
--------------------------
https://github.com/tito/2048 - 5.4k LOC

https://github.com/pacampbell/Game - 10.8k LOC //chosen project

https://github.com/coderwoodman/BillingSystem - 8k loc

https://github.com/codestream/Horoscopes - 9.6k loc - android app, not sure how easy this is to test

https://github.com/jgraber/ataraxis - 15k loc - AtaraxiS is a tool to encrypt data and manage passwords on a USB-stick

https://github.com/gdromard/mymoviecollection - 8.3k loc - A web application that handle your movie collection.

https://github.com/srpunjabi/blackjack - 9k loc - Text based BlackJack game in java **

https://github.com/paulballesty/YouTrack - 11.1k loc - Issue tracker web application

https://github.com/MrClement/Chess - 9.2k - Public files for AI Chess **
