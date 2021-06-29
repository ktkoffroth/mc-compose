#!/bin/bash

# go to /root/MC/BuildTools directory, get latest version of spigot BuildTools,
# and run BuildTools to get latest version of spigot server .jar
cd /root/MC/BuildTools/
wget -N https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
git config --global --unset core.autocrlf
rm -rf apache-maven-* BuildData Bukkit CraftBukkit Spigot work BuildTools.log.txt
java -jar BuildTools.jar --rev $VANILLA_VERSION

# move server .jar to server files directory, overwriting if necessary
mv -u spigot-$VANILLA_VERSION.jar ../Spigot-Vanilla/spigot-$VANILLA_VERSION.jar

# move to server files directory and run start command
cd ../Spigot-Vanilla
java -Xms2G -Xmx2G -XX:+UseG1GC -jar spigot-$VANILLA_VERSION.jar
