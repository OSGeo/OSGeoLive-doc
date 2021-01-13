:Author: Astrid Emde
:Author: Enock Seth Nyamador
:Version: osgeolive14.0
:License: Creative Commons Attribution-ShareAlike 3.0 Unported  (CC BY-SA 3.0)

********************************************************************************
Command Line Quickstart
********************************************************************************

When you work with GNU/Linux operations systems such as OSGeoLive, Ubuntu, etc., it is good to know how to work on the command line. 

Don't worry. It is not difficult to learn and you will discover that it is fun and very powerful.

In this quickstart you will learn some basic commands.

The following commands run from within a Terminal Emulator window.

Start a Terminal Emulator (`QTerminal` currently) from the `Applications` menu in the `System Tools` section. This gives you a Unix shell command prompt.

.. contents:: Contents
   :local:


Where am I?
==========================

`pwd` shows the path of your current location.

:: 

 pwd
 /home/user


.. tip:: 
   You can ask all commands for help and get information on how they can be used and find out about additional options.


:: 


  pwd --help
  pwd: pwd [-LP]
    Print the name of the current working directory.
    
    Options:
      -L        print the value of $PWD if it names the current working
                directory
      -P        print the physical directory, without any symbolic links
    
    By default, `pwd' behaves as if `-L' were specified.
    
    Exit Status:
    Returns 0 unless an invalid option is given or the current directory cannot be read.



How to navigate in the file system?
===================================

First you should get to know how the file system under Linux is organized. The file system is organized in a tree. It starts with the `/` known as root directory. All files and directories are under the root directory (`/`).

The current user is "`user`" and has a home directory located at `/home/user`. Anytime you open a terminal window it will start in your home directory (see pwd).

You can easily navigate in the file system with the command cd.

cd / navigated to the root directory 
cd /home/user goes to your home directory
same as
cd ~

`cd ..` moves you one directory to the top 
`cd user` goes from your current location to the home directory of user. This is not the same as `/user`

.. tip:: 
   Use the tab key to autocomplete the path while you are typing. 


Create a directory
==================

You have write access in your user-directory. You can create files and directories there. Next we will create a directory for some command line tests.

:: 

 cd ~
 mkdir demo - creates the directory demo 
 cd demo

.. tip:: 
   You have a command history. You can navigate in the history with the arrow up and down key.


How to create a new file
=========================

`touch` creates a new empty file.

:: 
 
 cd ~/demo
 touch hello.txt

.. tip:: 
   You can pipe the information from a command to a file i.e. the command history. history displays the command history. With the following command it can be saved in a file.

::
 
 history > history.txt


Show me what is in a directory
==============================

You would like to know more about the content of a directory. `ls` is the program that gives you a lot of information.

* `ls` lists all files and directories
* `ls -l` shows a more detailed list of the files/directories with time, user access rights
* `ls -a` also shows hidden files
* `ls -al` you can combine the different options
* `ls -1` shows only the file names

:: 

 cd ~/demo
 ls -l
 
 total 4
 -rw-rw-r-- 1 user user   0 Dec 26 16:23 hello.txt
 -rw-rw-r-- 1 user user 255 Dec 26 16:24 history.txt
                                                                         



Copy files and directories
==========================

You can copy files from one location to another.


Copy a file to a new file
 
:: 

 cp hello.txt hello_again.txt


Copy a file to another directory

:: 

 cp hello.txt /home/user/ 


Copy a whole directory to a new location (-R recursive)

:: 

 cp -R /home/user/demo /tmp 



Who is sudo?
============

With `sudo` you can do things that you are normally not allowed to.
sudo runs commands with the rights of the superuser also known as root
With sudo you can i.e. install more software, administrate services, change access rights and more fun. You will see the use of sudo in some of the following commands.


Search and install programs
============================

Show information about programs.

:: 

 apt show postgis

Search for programs 

:: 

 apt search postgis


Install programs

:: 

 sudo apt-get install sl


You will love the program `sl`. Run the new program with `sl` see also `apt show sl`.


Services
========

Some programms run as services like PostgreSQL, tomcat or Apache Webserver. You can start or stop the services.

Restart your Apache Service

:: 

 sudo service apache2 restart
 
 sudo service apache2 --help
 
 sudo service apache2 status


How to edit files
=================

You can either edit files in the terminal or open them with an external program like Geany.

In the terminal window you can use the vim editor (Vi IMproved). vim is very powerful and has many options.

See also

* https://help.ubuntu.com/community/VimHowto
* https://vim.rtorr.com/lang/en_en


Open a file with vim:

:: 

 vim /home/user/demo/hello.txt

* press `i` to switch to the edit mode
* `ESC` leaves the edit mode
* `:w` saves your changes
* `:wq` saves your changes and closes the file
* `:q` closes the file
* `:q!` closes the file without saving



Owner and access rights
=======================

Access rights define whether a `user` or `group` or `others` have access to a file and what sort of access is given. You can have `read`, `write` or `excecute` access.

Directories or files have an owner and a group definition. By default the creator of a file/directory is the owner. But this definition can be changed. You will learn this in the next section.

You can show the user and group via `ls -l`

:: 

 cd /home/user/demo
 ls -l
 -rw-rw-r-- 1 user user 122 Dec 26 16:11 history.txt

* the initial character can be `-` for a file or `d` for directory
* `user` is defined as the owner and the group

Access rights are listed at the beginning of the row:
* `r` read
* `w` write
* `x` execute

* first 3 letters for the owner
* then next 3 letters for the group
* followed by the last 3 letters for others 


You can change the owner with chown
===================================

:: 

 sudo chown -R user:www-data /var/www/html/TBD

* first pass the user then the group - like `user:www-data`
* `-R` recursive


You can change the access rights with chmod
===========================================

:: 

 sudo chmod -R 777 /var/www/html/TBD 
 

* 777 everyone can do everything
* `-R` recursive

* 1. number: owner (u) 
* 2. number: group (g)
* 3. number: other (o)

* 4 read
* 2 write
* 1 execute

* 660 - user and group are allowed to read and write, other have no rights
* 744 - user can do everything, group and others can only read

or use it like this

:: 

 sudo chmod -R u+rwx /var/www/html/TBD 

* u = user 
* g = group 
* o = other 
* a = all 
* +/- right: r = read / w = write / x = execute


Things to try
=============

Here are other commands you may try.

* grep - search for a pattern in a text
* history | grep cd
* rm - remove a file/directory
* mv - rename
* less - show the beginning of a file
* tail - show the end of a file
* find - search for files in a directory hierarchy
* locate - find files by name



What next?
==========

You have learned some important commands and information to work with the command line. Hopefully you have discovered how powerful the command line is.

* https://ubuntu.com/tutorials/command-line-for-beginners#1-overview
* https://en.wikipedia.org/wiki/Category:Standard_Unix_programs



