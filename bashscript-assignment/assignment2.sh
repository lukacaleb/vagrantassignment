#!/bin/bash
#Assignment 1
# Create a Bash script that accepts directory paths as arguments. For each argument, list the contents of each directory with the name of each listed at the top.

# If you want to give yourself an added challenge, 
# have your script accept an additional argument, 
# “a” or “d,” that sorts the contents of each directory 
# in either ascending or descending order. 
# For even more of a challenge, 
# create a Bash script that sorts the 
# contents of the directories based on an “a” or “d” argument that directly precedes it. 
# In other words, you should be able to sort one directory in ascending order, 
# a second directory in descending order, and so on.


#!/bin/bash

# Function to list contents of a directory and sort based on argument
list_and_sort_directory() {
    dir_path="$1"
    sort_order="$2"

    echo "Contents of $dir_path:"
    
    if [ "$sort_order" == "a" ]; then
        ls "$dir_path" | sort   # list the items in ascending order
    elif [ "$sort_order" == "d" ]; then
        ls "$dir_path" | sort -r   # list the items in descending order
    else
        ls "$dir_path"
    fi

    echo "" # adds an empty line to separate the listing of different directories 

}

# Loop through the arguments and process each directory
for ((i = 1; i <= $#; i++)); do
    arg="${!i}"
    next_arg="${!((i+1))}"
    
     # Check if the argument is a directory
    if [ "$arg" == "a" ] || [ "$arg" == "d" ]; then
        continue
    fi

    if [ "$next_arg" == "a" ] || [ "$next_arg" == "d" ]; then
        list_and_sort_directory "$arg" "$next_arg"
        ((i++)) # Skip the next argument which is the sorting argument
    else
        list_and_sort_directory "$arg"
    fi
    else
        echo "Error: $dir is not a directory"
    fi
done





# Assignment 2
# Another way to work with text in Bash is with AWK commands. 
# For this challenge we’ll use the following data set of the world’s countries and their capitals.

# Create a Bash script that outputs this dataset into two columns: 
# one for the country and the other for its capital.

# For an added challenge, 
# have your script accept a letter as input. 
# The output should be just the countries that start with the input letter. 
# For another challenge, create another Bash script that outputs a 
# two-column list sorted alphabetically by capital city.


#!/bin/bash

# Dataset of countries and capitals
declare -A countries_capitals=(
    ["Afghanistan"]="Kabul"
    ["Albania"]="Tirana"
    ["Algeria"]="Algiers"
    # ... (other country-capital pairs)
)

# Function to print filtered countries based on starting letter
print_countries_by_letter() {
    letter="$1"
    
    echo "Countries starting with '$letter':"
    
    for country in "${!countries_capitals[@]}"; do
        if [[ "$country" == $letter* ]]; then
            echo "$country - ${countries_capitals[$country]}"
        fi
    done

    echo ""
}

# Function to print the sorted list by capital city
print_sorted_by_capital() {
    echo "Sorted list by capital city:"
    
    for capital in $(printf '%s\n' "${countries_capitals[@]}" | sort -k2); do
        country=$(echo "$capital" | cut -d' ' -f1)
        capital=$(echo "$capital" | cut -d' ' -f2)
        echo "$country - $capital"
    done

    echo ""
}

if [ $# -eq 1 ]; then
    input_letter="$1"
    print_countries_by_letter "$input_letter"
else
    echo "Full list of countries and capitals:"
    for country in "${!countries_capitals[@]}"; do
        echo "$country - ${countries_capitals[$country]}"
    done
fi

print_sorted_by_capital



#Assignment 3
# Programmers who work in Bash are often System Administrators who manage computer and server networks. 
# So, it’s important to know which disks and file systems are mounted — 
# that is, accessible by the computer’s file system. 
# Note that just because a disk or 
# computer is physically attached with cables doesn’t always mean that it’s mounted and accessible.

# Come up with a Bash script that detects whether a given mount point or file system is mounted. 
# If so, the script should return the amount of used space on the file system and the amount of free space. 
# If the file system isn’t mounted, your script should return an error message.

# Looking for an extra challenge? 
# Add a prompt to your script that asks the user if they want to attempt to mount the file system if it’s unmounted. 
# When the file system mounts, the script should then output the amount of used space and free space in the file system.

#!/bin/bash

# Function to check if a file system is mounted
is_mounted() {
    mount_point="$1"
    mount | grep -qE "\s${mount_point}\s"
}

# Function to get space information for a mounted file system
get_space_info() {
    mount_point="$1"
    used_space=$(df -h "$mount_point" | awk 'NR==2{print $3}')
    free_space=$(df -h "$mount_point" | awk 'NR==2{print $4}')
    
    echo "Used space on '$mount_point': $used_space"
    echo "Free space on '$mount_point': $free_space"
}

read -p "Enter the mount point or file system path: " input_path

if is_mounted "$input_path"; then
    get_space_info "$input_path"
else
    echo "The file system at '$input_path' is not mounted."

    read -p "Do you want to attempt to mount it? (y/n): " choice
    if [ "$choice" == "y" ]; then
        sudo mount "$input_path"
        if is_mounted "$input_path"; then
            echo "File system mounted successfully."
            get_space_info "$input_path"
        else
            echo "Failed to mount the file system."
        fi
    fi
fi


