# Define the targets and their dependencies
linux: cleanup
	sh ./bin/linux.sh

cleanup:
	sh ./bin/cleanup.sh

.PHONY: permissions
permissions:
	chmod +x ./bin/linux.sh
	chmod +x ./bin/linux.sh

# Sets Default target
.PHONY: all
all: permissions linux
