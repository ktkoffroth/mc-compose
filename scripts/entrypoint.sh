#!/bin/bash

# go to /root/MC/BuildTools directory, get latest version of spigot BuildTools,
# and run BuildTools to get latest version of spigot server .jar
cd /root/MC/BuildTools/
#wget -N https://hub.spigotmc.org/jenkins/job/BuildTools/lastSuccessfulBuild/artifact/target/BuildTools.jar
#java -jar BuildTools.jar --rev 1.17

# move server .jar to server files directory, overwriting if necessary
#mv -u spigot-1.17.jar ../Spigot-Vanilla/spigot-1.17.jar

# move to server files directory and run start command
cd ../Spigot-Vanilla
java -Xms2G -Xmx2G -XX:+UseG1GC -jar spigot-1.17.jar