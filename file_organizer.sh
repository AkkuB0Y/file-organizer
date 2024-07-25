#!/bin/bash

# source directory: downloads
source_directory="/Users/akshaysatish/Downloads"
# should be "/Users/your_name/Downloads"

# destination directory: also downloads, but subfolders!
destination_directory="/Users/akshaysatish/Downloads"

# make your directories as need be! (auto generated)
mkdir -p "$destination_directory/photos"
mkdir -p "$destination_directory/documents/resumes"
mkdir -p "$destination_directory/documents"
mkdir -p "$destination_directory/media"
mkdir -p "$destination_directory/documents/cover-letters"
mkdir -p "$destination_directory/documents/university"

# images
find "$source_directory" -type f \( -iname "*.jpg" -o -iname "*.jpeg" -o -iname "*.png" -o -iname "*.HEIC" -o -iname "*.svg" \) -exec mv {} "$destination_directory/photos"  \;
# docs
find "$source_directory" -type f \( -iname "*.pdf" -o -iname "*.doc" -o -iname "*.docx" \) -exec mv {} "$destination_directory/documents" \;
# media
find "$source_directory" -type f \( -iname "*.mp4" -o -iname "*.mov" -o -iname "*.mp3" \) -exec mv {} "$destination_directory/media" \;

# cover letters
find "$source_directory" -type f \( -iname "*CL" -o -iname "* Cover Letter*"\) -exec mv {} "$destination_directory/documents/cover-letters" \;

# uni stuff
find "$source_directory" -type f \( -iname "*ECE *" -o -iname "*MATH *"\) -exec mv {} "$destination_directory/documents/university" \;

# resumes/portfolios
find "$source_directory" -type f \( -iname "*Resume*" -o -iname "* Portfolio*" \) -exec mv {} "$destination_directory/documents/resumes" \;


# By Akshay Satish - mini project to learn scripting!