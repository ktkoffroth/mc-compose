#!/bin/bash

# Minecraft Version Variable
VERSION=1.17

# go to /root/MC/BuildTools directory, get latest version of spigot BuildTools,
# and run BuildTools to get latest version of spigot server .jar
cd /root/MC/BuildTools/
wget -N https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
git config --global --unset core.autocrlf
rm -rf apache-maven-* BuildData Bukkit CraftBukkit Spigot work BuildTools.log.txt
java -jar BuildTools.jar --rev $VERSION

# move server .jar to server files directory, overwriting if necessary
mv -u spigot-$VERSION.jar ../Spigot-Vanilla/spigot-$VERSION.jar

# move to server files directory and run start command
cd ../Spigot-Vanilla
java -Xms2G -Xmx2G -XX:+UseG1GC -jar spigot-$VERSION.jar
