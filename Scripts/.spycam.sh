#!/bin/bash

# Create the .spycam folder if it doesn't exist
if [ ! -d "$HOME/Scripts/.spycam" ]; then
    mkdir "$HOME/Scripts/.spycam"
fi

# Get the number of photos already in the folder
num_photos=$(ls "$HOME/Scripts/.spycam" | wc -l)

# Take a photo and name it based on the number of photos already in the folder
filename="$HOME/Scripts/.spycam/$((num_photos+1)).jpg"
termux-camera-photo "$filename"
