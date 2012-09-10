##Installation:

	$ git clone git://github.com/didahsu/dotvim.git ~/.vim

##Create symlinks:

	$ ln -s ~/.vim/vimrc ~/.vimrc
	$ ln -s ~/.vim/gvimrc ~/.gvimrc

##Switch to the '~/.vim' directory, and fetch submodules:
	 
	$ cd ~/.vim
	$ git submodule init
	$ git submoduel update

##Add the new plugin

	$ cd ~/.vim
	$ git submodule add https://github.com/Lokaltog/vim-powerline bundle/powerline
	$ git add . 
	$ git commit -m "Install Powerline.vim bundle as a submodule."
	$ git push
	$ git pull

##Remove the plugin
	
	$ git rm --cached [plugin directory]
	$ rm -rf [plugin directory]
	$ vim .gitmodules  //remove the plugin setting
	$ vim .git/config //remove the plugin setting
	$ git add .gitmodules
	$ git commit -m "Remove a submodule"
	$ git submodule sync

##Clone to another computer
	 
	$ cd ~
	$ git clone http://github.com/didahsu/dotvim.git ~/.vim
	$ ln -s ~/.vim/vimrc ~/.vimrc
	$ ln -s ~/.vim/gvimrc ~/.gvimrc
	$ cd ~/.vim
	$ git submodule init
	$ git submodule update

##Powerline.vim vimrc setting
	$ let g:Powerline_symbols = 'unicode'
