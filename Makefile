EXECUTABLE=~/bin/print-guardian-crossword
LAUNCHAGENT=~/Library/LaunchAgents/com.stevemarshall.PrintGuardianCrossword.plist

install: $(EXECUTABLE) \
  $(LAUNCHAGENT)

$(EXECUTABLE):
	ln -s "$$PWD/$(@F)" $(@D)

$(LAUNCHAGENT):
	ln -s "$$PWD/$(@F)" $(@D)
	launchctl load $@

uninstall:
	launchctl unload $(LAUNCHAGENT)
	rm -rf $(EXECUTABLE) \
	  $(LAUNCHAGENT)
