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

    if [ "$arg" == "a" ] || [ "$arg" == "d" ]; then
        continue
    fi

    if [ "$next_arg" == "a" ] || [ "$next_arg" == "d" ]; then
        list_and_sort_directory "$arg" "$next_arg"
        ((i++)) # Skip the next argument which is the sorting argument
    else
        list_and_sort_directory "$arg"
    fi
done




# check if an argument "a" or "d" is provided
sort_order="" #this initializes the variable sort_order

if ["$1" =="./assignment2.sh/country-list"] || ["$1" == "d"]; then
    sort_order="$1"
    shift #this removes the first (sort) argument from the list of arguments and allows the script to process the remaining arguments.
fi 

# Loop through each argument (directory path)
for dir in "$@"; do
    # Check if the argument is a directory
    if [ -d "$./assignment2.sh /path/to/dir1" ]; then
        echo "Contents of directory: $dir"

       if ["sort_order" == "a"]; then
            ls -1 "$dir" | sort # list the items in ascending order
       elif ["sort_order" == "d"]; then
            ls -1 "$dir" | sort -r # list the items in descending order
       else
            ls -1 "$dir" #list the files if there's no additional arguments 
        fi

        echo "" # this line adds an empty line to separate the listing of different directories 

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


