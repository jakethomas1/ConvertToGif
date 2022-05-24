# gifCreate

gifCreate is a bash script which uses ffmpeg and giflossy to mass convert and optimize all .mp4 files in a given folder to .gif files. 

Mainly used to convert screen recorded mobile videos (.mov to .gif), but may have other applications. 

Note: Windows "Photos" software can be used to convert from .mov to .mp4.

<pre>
<h3> Instructions: </h3>
1. First acquire dependencies 'giflossy' and 'ffmpeg':
'ffmpeg'-
&nbsp;&nbsp;sudo apt update                     # Update local packages list
&nbsp;&nbsp;sudo apt install ffmpeg             # Install ffmpeg

'giflossy'-
&nbsp;&nbsp;sudo apt update                     # Update local packages list
&nbsp;&nbsp;sudo apt install nodejs             # Install nodejs
&nbsp;&nbsp;sudo apt install npm                # Install node package manager (npm)
&nbsp;&nbsp;sudo npm install -g n               # Install n (a node version manager) globally
&nbsp;&nbsp;sudo n 7                            # Install and use v7.10.1
&nbsp;&nbsp;sudo npm install --global giflossy  # Install giflossy globally

2. Mandatory Variable(s):
Then use a text editor to set the variable 'targetPath' on line 3 of gifCreate.sh to the 
absolute path of the directory of .mp4s to be converted.

3. Run:
Use the following command in your command prompt:
&nbsp;&nbsp;bash gifCreate.sh

Output:
Console output will include logging from ffmpeg and giflossy.
.gif files will be output to the directory from which the .mp4s were collected.

4. Optional Variables:
&nbsp;&nbsp;Located in line 4-8 of gifCreate.sh:
&nbsp;&nbsp;&nbsp;&nbsp;0 < frameDelayPct <= 1
&nbsp;&nbsp;&nbsp;&nbsp;0 < frameRate <= 30
&nbsp;&nbsp;&nbsp;&nbsp;0 < scale <= 1
&nbsp;&nbsp;&nbsp;&nbsp;0 <= lossiness <= 160
&nbsp;&nbsp;&nbsp;&nbsp;0 <= compressionLevel <= 100

Note: These instructions are tailored for Ubuntu.
</pre>
