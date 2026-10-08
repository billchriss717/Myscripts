#!/bin/bash

# Prompt user for the URL and the desired format
read -p "Enter the video URL now and press Enter: " url
read -p "Enter desired file format (e.g., wav or mp3): " format

# Conditional statement to check the format
if [ "$format" == "wav" ]; then
    # WAV format selected: downloads highest quality audio and converts to WAV
    yt-dlp --audio-quality 0 --extract-audio --audio-format wav "$url"
elif [ "$format" == "mp3" ]; then
    # MP3 format selected: includes thumbnail and converts to MP3
    yt-dlp --audio-quality 0 --embed-thumbnail --extract-audio --audio-format mp3 "$url"
else
    # Handle unknown formats and default to MP3
    echo "Unknown format entered. Defaulting to MP3..."
    yt-dlp --audio-quality 0 --embed-thumbnail --extract-audio --audio-format mp3 "$url"
fi
