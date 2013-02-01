#!/usr/bin/perl
# うーん。なんだかただ改行してくっつけるだけのスクリプトになってしまった。

use strict;

sub main{
    my @install = qw(
        git
        tig
        make
        curl
        ruby
        cpanminus
        npm
        nginx
      	emacs
      	fish
        vim
        php5
      	php5-fpm
    	ssh
    	nkf
    	
        sysv-rc-conf
        bash-completion
        build-essential
        libssl-dev
        libreadline6-dev
        zlib1g-dev
        checkinstall
        ibus-mozc
        galternatives
        compiz-plugins
        compizconfig-settings-manager
        gconf-editor  	    
        gnome-shell
        gnome-tweak-tool

        ttf-inconsolata
        ttf-dejavu
        tmux
    );
    my @npms = qw(
        node-dev
    );
    my @remove = qw(
    	unity-lens-shopping
        ubuntuone-*
        firefox
    );
    #lubuntu-desktop
  	#apache2
  	#gnome-shell
    #vim
	#gnome-tweak-tool
    print "start\n";
    my $_install = join(' ',@install);
    my $install_cmd = 'sudo apt-get install';
    system("$install_cmd $_install");
    
    my $_npms = join(' ',@npms);
    system("sudo npm install -g $_npms");
    
    my $_remove = join(' ',@remove);
    my $remove_cmd = 'sudo apt-get remove';
    system("$remove_cmd $_remove");
    
    print "end\n";
}
main();
