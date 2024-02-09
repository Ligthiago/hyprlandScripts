DESTDIR ?= /
PREFIX ?= $(DESTDIR)usr/local
EXEC_PREFIX ?= $(PREFIX)
DATAROOTDIR ?= $(PREFIX)/share
BINDIR ?= $(EXEC_PREFIX)/bin

install:
	@install -v -D -m 0755 hyprscreen --target-directory "$(BINDIR)"

uninstall:
	rm "$(BINDIR)/hyprscreen"
