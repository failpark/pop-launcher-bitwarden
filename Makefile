ifeq ($(DESTDIR),)
BASE_PATH = $(HOME)/.local
LIB_PATH = $(BASE_PATH)/share
else
BASE_PATH = $(DESTDIR)/usr
LIB_PATH = $(BASE_PATH)/lib
endif

LAUNCHER_DIR = $(LIB_PATH)/pop-launcher
SCRIPTS_DIR = $(LAUNCHER_DIR)/scripts
PLUGIN_DIR = $(LAUNCHER_DIR)/plugins

install:
	dest=$(PLUGIN_DIR)/bitwarden; \
	mkdir -p $${dest}; \
	install -Dm0755 bw $${dest}; \
	install -Dm0644 plugin.ron $${dest}; \
	dest=$(PLUGIN_DIR)/bitwarden_totp; \
	mkdir -p $${dest}; \
	install -Dm0755 bwt $${dest}; \
	install -Dm0644 plugin_bwt.ron $${dest}/plugin.ron; \
