include config.mk

debug-config:
	@echo "Debug Makefile Configuration"
	@echo "TOOLCHAIN: $(TOOLCHAIN)"
	@echo "PREFIX: $(PREFIX)"
	@echo "TARGET: $(TARGET)"
	@echo "BINUTILS_VERSION: $(BINUTILS_VERSION)"
	@echo "GCC_VERSION: $(GCC_VERSION)"
	@echo "BUILD_THREADS: $(BUILD_THREADS)"
	@echo "PATH: $(PATH)"
.PHONY: debug-config

debug: debug-config

build-toolchain:
	@echo "Building toolchain..."
	cd $(TOOLCHAIN) && $(MAKE)
.PHONY: build-toolchain

clean-toolchain:
	@echo "Cleaning toolchain..."
	cd $(TOOLCHAIN) && $(MAKE) clean
.PHONY: clean-toolchain

help:
	@echo "Available targets:"
	@echo "  all              - Build the entire project"
	@echo "  debug            - Debug actions"
	@echo "  clean-toolchain  - Clean the build artifacts"
	@echo "  build-toolchain  - Build the toolchain"
	@echo "  help             - Show this help message"
