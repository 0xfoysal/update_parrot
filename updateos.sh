#!/bin/bash

# Function to update Parrot OS repositories
update_parrot_os() {
    echo "Updating Parrot OS repositories..."
    sudo apt update && sudo apt upgrade -y && sudo apt autoremove -y
    if [ $? -eq 0 ]; then
        echo "Parrot OS repositories updated successfully!"
    else
        echo "Error updating Parrot OS repositories."
        exit 1
    fi
}

# Function to update a Git repository
update_git_repo() {
    REPO_DIR=$1
    if [ -d "$REPO_DIR" ]; then
        echo "Updating Git repository at $REPO_DIR..."
        cd "$REPO_DIR" || exit
        git pull
        if [ $? -eq 0 ]; then
            echo "Git repository updated successfully!"
        else
            echo "Error updating Git repository."
            exit 1
        fi
        cd - || exit
    else
        echo "Directory $REPO_DIR does not exist."
        exit 1
    fi
}

# Main menu
echo "Choose an option:"
echo "1. Update Parrot OS repositories"
echo "2. Update a Git repository"
echo "3. Exit"

read -rp "Enter your choice (1/2/3): " CHOICE

case $CHOICE in
    1)
        update_parrot_os
        ;;
    2)
        read -rp "Enter the path to the Git repository: " REPO_PATH
        update_git_repo "$REPO_PATH"
        ;;
    3)
        echo "Exiting..."
        exit 0
        ;;
    *)
        echo "Invalid choice. Please run the script again."
        exit 1
        ;;
esac
