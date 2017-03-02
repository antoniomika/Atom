#!/bin/sh

# Make sure Atom is installed
if ! which atom > /dev/null; then
    echo "Opening the browser to install atom..."
    open "https://atom.io/"
elif ! which apm > /dev/null; then
    echo "Open Atom and install shell commands from the Atom menu"
fi

# install packages
apm install --packages-file packages.txt

# Setup the config
if [ -f ~/.atom/config.cson ]; then
    mv ~/.atom/config.cson ~/.atom/config.cson.bak
fi

cp config.cson ~/.atom/config.cson

echo "Done! Quit and restart atom for changes to take effect!"