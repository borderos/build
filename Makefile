GOARCH := mips64
PARENT_DIR := $(shell dirname $$PWD)
FLASH_SIZE ?= 4294967296  # 4GiB

build:
	env GOARCH=$(GOARCH) gok --parent_dir $(PARENT_DIR) -i build overwrite --full borderos.img --target_storage_bytes $(FLASH_SIZE)
