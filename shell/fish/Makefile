all:
	ln -sfn $(PWD)/submodules/.oh-my-fish ~
	ln -sfn $(PWD)/config/custom ~/.config/fish
	ln -sfn $(PWD)/config/config.fish ~/.config/fish

clean:
	[ -f ~/.config/fish/custom ] || rm -f ~/.config/fish/custom
	[ -f ~/.config/fish/config.fish ] || rm -f ~/.config/fish/config.fish
	[ -f ~/.oh-my-fish ] || rm -f ~/.oh-my-fish