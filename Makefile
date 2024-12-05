
all: linux


clean: 
	@bash ./bin/cleanup.sh


linux: clean
	@bash ./bin/linux.sh
