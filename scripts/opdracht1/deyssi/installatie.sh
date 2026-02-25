#! /bin/bash
# Automatiseren software-installatie


echo "Hello World!"

echo "Wil je de algemene applicaties? (MacDown, Sourcetree) installeren? (j/n)"
read ALGEMEEN

if [ "$ALGEMEEN" == "j" ]; then
    echo "Installatie algemene applicaties..."
    brew install macdown
    brew install sourcetree
else
    echo "Geen algemene applicaties nodig"
fi

#echo "Installatie algemene applicaties"
#brew install macdown
#brew install sourcetree

echo "Wil je de software om te programmeren? (Eclipse, Visual Paradigm, VS Code) installeren? (j/n)"
read OP

if [ "$OP" == "j" ]; then
    echo "Installatie software om te programmeren..."
    brew install eclipse-ide
    brew install visual-paradigm 
    brew install visual-studio-code 
else
    echo "Geen software om te programmeren nodig."
fi

#echo "Software voor programmeren"
#brew install eclipse-ide 
#brew install visual-paradigm 
#brew install visual-studio-code 

echo "Wil je de applicaties voor communicatie? (Discord, Microsoft Teams) installeren? (j/n)"
read COMM

if [ "$COMM" == "j" ]; then
    echo "Installatie applicaties voor communicatie..."
    brew install discord
    brew install microsoft-teams 
else
    echo "Geen applicaties voor communicatie nodig."
fi

#echo "Applicaties voor communicatie"
#brew install discord
#brew install microsoft-teams

echo "Wil je de software voor System Engineering Lab? (CyberDuck, My SQL Workbench) installeren? (j/n)"
read SEL

if [ "$SEL" == "j" ]; then
    echo "Installatie software voor System Engineering Lab..."
    brew install cyberduck
    brew install mySQLworkbench 
else
    echo "Geen software voor System Engineering Lab nodig."
fi

echo "Ten slotte, wil je games downloaden? (Space Invaders, 2048) installeren? (j/n)"
read GAMES

if [ "$GAMES" == "j" ]; then
    echo "Installatie games..."
    brew install ninvaders
    brew install bastet 
else
    echo "Geen games nodig."
fi

#echo "Software voor System Engineering Lab"
#brew install cyberduck
#brew install mySQLworkbench

#Voor intel-mac processoren niet voor silicon
#brew install --cask virtualbox@7.2.6
#brew pin virtualbox