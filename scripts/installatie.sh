#! /bin/bash
# Automatiseren software-installatie

echo "Hello World!"

echo "Installatie algemene applicaties"
brew install macdown
brew install sourcetree

echo "Software voor programmeren"
brew install eclipse-ide 
brew install visual-paradigm 
brew install visual-studio-code 

echo "Applicaties voor communicatie"
brew install discord
brew install microsoft-teams


echo "Software voor System Engineering Lab"
brew install cyberduck
brew install mySQLworkbench

#Voor intel-mac processoren niet voor silicon
brew install --cask virtualbox@7.2.6
brew pin virtualbox