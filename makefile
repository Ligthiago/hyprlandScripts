DESTDIR ?= /
PREFIX ?= $(DESTDIR)usr/local
EXEC_PREFIX ?= $(PREFIX)
DATAROOTDIR ?= $(PREFIX)/share
BINDIR ?= $(EXEC_PREFIX)/bin

install-hyprscreen:
	@install -v -D -m 0755 hyprscreen/hyprscreen --target-directory "$(BINDIR)"

install-hyprzen:
	@install -v -D -m 0755 hyprzen/hyprzen --target-directory "$(BINDIR)"

install-hyprexclusive:
	@install -v -D -m 0755 hyprexclusive/hyprexclusive --target-directory "$(BINDIR)"

uninstall-hyprscreen:
	rm "$(BINDIR)/hyprscreen"
	
uninstall-hyprzen:
	rm "$(BINDIR)/hyprzen"

uninstall-hyprexclusive:
	rm "$(BINDIR)/hyprexclusive"
