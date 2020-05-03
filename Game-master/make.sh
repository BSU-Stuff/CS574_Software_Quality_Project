#!/bin/bash
pwd
cd src/
pwd
javac game/animation/ease/*.java
javac game/animation/tween/*.java
javac game/debug/*.java
javac game/framework/*.java
javac game/graphics/*.java
javac game/gui/*.java
javac game/input/*.java

jar cf Game.jar .
mv Game.jar ./../Game.jar
cd ..
