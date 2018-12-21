## Setup Instructions:  
1. Download the MortgageCalculator.lisp source code from this Github depending on how you donwloaded it you may need to unzip it  

2. Download CLisp compiler for Common Lisp read below where it says "How to download CLisp:" to learn how you may also need to unzip the file after and find a proper place to store it on your computer or laptop

3. After downloading CLisp, open it can be done by typing CLisp in the terminal for Macintosh and Linux
(or Command Prompt if you allowed it when setting up). When you see a menorah made up of ASCII characters here you are in the right place.

4. In CLisp type (load pathname) but instead of typing pathname type the absolute pathname of where you stored MortgageCalculator.lisp (including the name of source file MortgageCalculator.lisp) on your computer in double quotes.
Since CLisp is reading the absolute pathname as a string, you need to put a \ as an escape character for other backslashes and single or double quotation marks inside of the name.
Windows users may be able to locate the file MortgageCalculator.lisp inside their File Explorer and right click the source code file and then click "Compile with CLisp" and then run the code by clicking the file that is also named MortgageCalculator but the file type is CLisp compiled file instead of Lisp source file.
If you are on Windows and do not know your absolute pathname I recommend searching for File Explorer options next to the Windows button, going to the view tab, then clicking Display full path in the title bar. This will allow the user to see their absolute path at the top of their File Explorer for the directory they are in.
5. The program should then run inside of the terminal.

## How to download CLisp:

__For Windows:__

1.Download CLisp from this site keep track of where you stored it.
2.Unzip it if needed and go through the startup.
3. I reccomend going with the feature that allows it in command prompt it makes it easy to access

__For Macintosh:__  
(I learned this from the site https://sanjib.org/2014/01/26/installing-common-lisp-clisp-on-mac-os-x/comment-page-1/)

1. Open terminal (can use spotlight search to find it)

2. Use the following command to download Homebrew that will help download CLisp
```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```
3. Then install CLisp by using the next following command  
```
brew install clisp

or if you would like to verbose the output use:  
brew -v install clisp
```
__For Ubuntu Linux:__ (this might be the same for other distros of Linux):  
(I learned how to do it from this site https://roshanbook.wordpress.com/2012/09/22/setting-up-lisp-on-ubuntu-linux/)

1. Type this command in the terminal:  
```
sudo apt-get install clisp
```
## Sources I used to write this:  
https://sourceforge.net/projects/clisp/  
https://sanjib.org/2014/01/26/installing-common-lisp-clisp-on-mac-os-x/comment-page-1/  
http://cygwin.wikia.com/wiki/Clisp  
https://stackoverflow.com/questions/31628803/run-a-common-lisp-file-from-the-clisp-interface-error  
https://www.cs.columbia.edu/~jvoris/AI/notes/lisp-running.txt  
https://roshanbook.wordpress.com/2012/09/22/setting-up-lisp-on-ubuntu-linux/  
http://www.lispworks.com/news/news35.html

