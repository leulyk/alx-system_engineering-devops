# [0x00. Shell, basics](https://github.com/leulyk/alx-system_engineering-devops/tree/main/0x00-shell_basics)

## Learning Objectives

        At the end of this project, you are expected to be able to explain to anyone:

            What does RTFM mean?
            What is a Shebang

        What is the Shell

            What is the shell
            What is the difference between a terminal and a shell
            What is the shell prompt
            How to use the history (the basics)

        Navigation

            What do the commands or built-ins cd, pwd, ls do
            How to navigate the filesystem
            What are the . and .. directories
            What is the working directory, how to print it and how to change it
            What is the root directory
            What is the home directory, and how to go there
            What is the difference between the root directory and the home directory of the user root
            What are the characteristics of hidden files and how to list them
            What does the command cd - do

        Looking Around

            What do the commands ls, less, file do
            How do you use options and arguments with commands
            Understand the ls long format and how to display it
            A Guided Tour
            What does the ln command do
            What do you find in the most common/important directories
            What is a symbolic link
            What is a hard link
            What is the difference between a hard link and a symbolic link

        Manipulating Files

            What do the commands cp, mv, rm, mkdir do
            What are wildcards and how do they work
            How to use wildcards

        Working with Commands

            What do type, which, help, man commands do
            What are the different kinds of commands
            What is an alias
            When do you use the command help instead of man

        Reading Man Pages

            How to read a man page
            What are man page sections
            What are the section numbers for User commands, System calls and Library functions

        Keyboard Shortcuts for Bash

            Common shortcuts for Bash

        LTS

            What does LTS mean?

## Mandatory tasks


### 0. [Where am I?](https://github.com/leulyk/alx-system_engineering-devops/blob/main/0x00-shell_basics/0-current_working_directory)

    Write a script that prints the absolute path name of the current working directory.

### 1. [What's in there?](https://github.com/leulyk/alx-system_engineering-devops/blob/main/0x00-shell_basics/1-listit)

    Display the contents list of your current directory.

### 2. [There is no place like home](https://github.com/leulyk/alx-system_engineering-devops/blob/main/0x00-shell_basics/2-bring_me_home)

    Write a script that changes the working directory to the user’s home directory.

        You are not allowed to use any shell variables

### 3. [The long format](https://github.com/leulyk/alx-system_engineering-devops/blob/main/0x00-shell_basics/3-listfiles)

    Display current directory contents in a long format.

### 4. [Hidden files](https://github.com/leulyk/alx-system_engineering-devops/blob/main/0x00-shell_basics/4-listmorefiles)

    Display current directory contents, including hidden files (starting with .). Use the long format.

### 5. [I love numbers](https://github.com/leulyk/alx-system_engineering-devops/blob/main/0x00-shell_basics/5-listfilesdigitonly)

    Display current directory contents.

            Long format
            with user and group IDs displayed numerically
            And hidden files (starting with .)

### 6. [Welcome](https://github.com/leulyk/alx-system_engineering-devops/blob/main/0x00-shell_basics/6-firstdirectory)

    Create a script that creates a directory named my_first_directory in the /tmp/ directory.

### 7. [Betty in my first directory](https://github.com/leulyk/alx-system_engineering-devops/blob/main/0x00-shell_basics/7-movethatfile)

    Move the file betty from /tmp/ to /tmp/my_first_directory.

### 8. [Bye bye Betty](https://github.com/leulyk/alx-system_engineering-devops/blob/main/0x00-shell_basics/8-firstdelete)

    Delete the file betty.

        The file betty is in /tmp/my_first_directory

### 9. [Bye bye My First directory](https://github.com/leulyk/alx-system_engineering-devops/blob/main/0x00-shell_basics/9-firstdirdeletion)

    Delete the directory my_first_directory that is in the /tmp directory.

### 10. [Back to the future](https://github.com/leulyk/alx-system_engineering-devops/blob/main/0x00-shell_basics/10-back)

    Write a script that changes the working directory to the previous one.

### 11. [Lists](https://github.com/leulyk/alx-system_engineering-devops/blob/main/0x00-shell_basics/11-lists)

    Write a script that lists all files (even ones with names beginning with a period character, which are normally hidden) in the current directory and the parent of the working directory and the /boot directory (in this order), in long format.

### 12. [File type](https://github.com/leulyk/alx-system_engineering-devops/blob/main/0x00-shell_basics/12-file_type)

    Write a script that prints the type of the file named iamafile. The file iamafile will be in the /tmp directory when we will run your script.

### 13. [We are symbols, and inhabit symbols](https://github.com/leulyk/alx-system_engineering-devops/blob/main/0x00-shell_basics/13-symbolic_link)

    Create a symbolic link to /bin/ls, named __ls__. The symbolic link should be created in the current working directory. 

### 14. [Copy HTML files](https://github.com/leulyk/alx-system_engineering-devops/blob/main/0x00-shell_basics/14-copy_html)

    Create a script that copies all the HTML files from the current working directory to the parent of the working directory, but only copy files that did not exist in the parent of the working directory or were newer than the versions in the parent of the working directory.

    You can consider that all HTML files have the extension .html

## Advanced Tasks

### 15. [Let's move](https://github.com/leulyk/alx-system_engineering-devops/blob/main/0x00-shell_basics/100-lets_move)

    Create a script that moves all files beginning with an uppercase letter to the directory /tmp/u.

    You can assume that the directory /tmp/u will exist when we will run your script

### 16. [Clean Emacs](https://github.com/leulyk/alx-system_engineering-devops/blob/main/0x00-shell_basics/101-clean_emacs)

    Create a script that deletes all files in the current working directory that end with the character ~.

### 17. [Tree](https://github.com/leulyk/alx-system_engineering-devops/blob/main/0x00-shell_basics/102-tree)

    Create a script that creates the directories welcome/, welcome/to/ and welcome/to/school in the current directory.

    You are only allowed to use two spaces (and lines) in your script, not more.
    
### 18. [Life is a series of commas, not periods](https://github.com/leulyk/alx-system_engineering-devops/blob/main/0x00-shell_basics/103-commas)

    Write a command that lists all the files and directories of the current directory, separated by commas (,).

        Directory names should end with a slash (/)
        Files and directories starting with a dot (.) should be listed
        The listing should be alpha ordered, except for the directories . and .. which should be listed at the very beginning
        Only digits and letters are used to sort; Digits should come first
        You can assume that all the files we will test with will have at least one letter or one digit
        The listing should end with a new line
