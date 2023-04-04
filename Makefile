# Set variables for the shell scripts
LINUX_SCRIPT = ./bin/linux.sh
CLEANUP_SCRIPT = ./bin/cleanup.sh

# Set the default target (in this case, "linux")
default: linux

# Define the "linux" target, which depends on "clean"
linux: clean
	chmod +x $(LINUX_SCRIPT)
	$(LINUX_SCRIPT)

# Define the "clean" target
clean:
	chmod +x $(CLEANUP_SCRIPT)
	$(CLEANUP_SCRIPT)
 
