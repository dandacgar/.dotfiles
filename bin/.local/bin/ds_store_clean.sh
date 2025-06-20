#!/bin/bash

# .DS_Store Removal

echo -e "\033[34m==>\033[0m Deleting .DS_Store Files..."
find ~/Documents/ -name ".DS_Store" -type f -delete
