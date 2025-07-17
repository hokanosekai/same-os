TOOLCHAIN = toolchain/

help:
	@echo "Available targets:"
	@echo "  all              - Build the entire project"
	@echo "  clean            - Clean the build artifacts"
	@echo "  build-toolchain  - Build the toolchain"
	@echo "  help             - Show this help message"

build-toolchain:
	@echo "Building toolchain..."
	cd $(TOOLCHAIN) && $(MAKE)

clean:
	@echo "Cleaning toolchain..."
	$(MAKE) -C $(TOOLCHAIN) clean
	rm -rf $(TOOLCHAIN)build/$(TARGET)


