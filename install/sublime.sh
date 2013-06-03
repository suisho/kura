cd /tmp
wget http://c758482.r82.cf2.rackcdn.com/Sublime%20Text%202.0.1%20x64.tar.bz2
tar xvjf sublime.tar.bz2
mv Sublime\ Text\ 2 SublimeText2
mv SublimeText2 /usr/lib/

sudo ln -s /usr/lib/SublimeText2/sublime_text /usr/bin/sublime
