
# ROOT DIRECTORIES OF BUILD AND COMPILATION
PROJECT_ROOT_DIR = $(shell pwd)
PROJECT_SRC_DIR = $(PROJECT_ROOT_DIR)/src
MODULE1_DIR = $(PROJECT_SRC_DIR)/module_1
MODULE2_DIR = $(PROJECT_SRC_DIR)/module_2
MODULE3_DIR = $(PROJECT_SRC_DIR)/module_3
APP_DIR = $(PROJECT_ROOT_DIR)/app



BUILD_DIR = $(PROJECT_ROOT_DIR)/build
PROJECT_MODULE_DIR = $(BUILD_DIR)/modules

# OUTPUT DIRECTORIES
EXE_OUTPUT_DIR = $(BUILD_DIR)/bin
LIBRARY_OUTPUT_DIR = $(BUILD_DIR)/lib
STATIC_LIBRARY_OUTPUT_DIR = $(LIBRARY_OUTPUT_DIR)/static
DYNAMIC_LIBRARY_OUTPUT_DIR = $(LIBRARY_OUTPUT_DIR)/dynamic


all: app


app: libs
	cd $(APP_DIR) && make all


libs: prepare
	cd $(MODULE2_DIR) && make all
	cd $(MODULE1_DIR) && make all
	cd $(MODULE3_DIR) && make all
	cd $(APP_DIR) && make all


prepare:
	mkdir -p $(BUILD_DIR) \
			 $(EXE_OUTPUT_DIR) \
			 $(LIBRARY_OUTPUT_DIR) \
			 $(STATIC_LIBRARY_OUTPUT_DIR) \
			 $(DYNAMIC_LIBRARY_OUTPUT_DIR) \
			 $(PROJECT_MODULE_DIR)


check_vars:
	echo PROJECT_ROOT_DIR: $(PROJECT_ROOT_DIR)
	echo APP_DIR: $(APP_DIR)


clean:
	-rm -rf $(BUILD_DIR)


.DEFAULT_GOAL = all
