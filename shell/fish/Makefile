all:
	ln -sf $(PWD)/submodules/.oh-my-fish ~
	ln -sf $(PWD)/config/custom ~/.config/fish
	ln -sf $(PWD)/config/config.fish ~/.config/fish

clean:
	[ -f ~/.config/fish/custom ] || rm -f ~/.config/fish/custom
	[ -f ~/.config/fish/config.fish ] || rm -f ~/.config/fish/config.fish
	[ -f ~/.oh-my-fish ] || rm -f ~/.oh-my-fish