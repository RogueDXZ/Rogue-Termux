#!/bin/bash

# Create the .spycam folder if it doesn't exist
if [ ! -d "$HOME/.spycam" ]; then
    mkdir "$HOME/.spycam"
fi

# Get the number of photos already in the folder
num_photos=$(ls "$HOME/.spycam" | wc -l)

# Take a photo and name it based on the number of photos already in the folder
filename="$HOME/.spycam/$((num_photos+1)).jpg"
termux-camera-photo "$filename"
