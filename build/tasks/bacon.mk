# Build system colors
ifneq ($(BUILD_WITH_COLORS),0)
    include vendor/proton/build/core/colors.mk
endif

PROTON_TARGET_PACKAGE := $(PRODUCT_OUT)/$(PROTON_TARGET_ZIP)
PROTON_TARGET_PACKAGE_FOLDER := $(PRODUCT_OUT)

MD5 := prebuilts/build-tools/path/$(HOST_PREBUILT_TAG)/md5sum

ifndef PROD_OTA_PACKAGE_TARGET

.PHONY: bacon
bacon: $(INTERNAL_OTA_PACKAGE_TARGET)
	$(hide) mv $(INTERNAL_OTA_PACKAGE_TARGET) $(PROTON_TARGET_PACKAGE)
	$(hide) $(MD5) $(PROTON_TARGET_PACKAGE) | sed "s|$(PRODUCT_OUT)/||" > $(PROTON_TARGET_PACKAGE).md5sum
	@echo -e ""
	@echo -e ${CL_CYN}"=============================-Package complete-============================"${CL_RST}
	@echo -e ${CL_CYN}"Folder : "${CL_MAG} $(PROTON_TARGET_PACKAGE_FOLDER)${CL_RST}
	@echo -e ${CL_CYN}"ZipName: "${CL_MAG} $(PROTON_TARGET_ZIP)${CL_RST}
	@echo -e ${CL_CYN}"MD5    : "${CL_MAG}" $(shell cat $(PROTON_TARGET_PACKAGE).md5sum | awk '{print $$1}')"${CL_RST}
	@echo -e ${CL_CYN}"Size   : "${CL_MAG}" $(shell du -hs $(PROTON_TARGET_PACKAGE) | awk '{print $$1}')"${CL_RST}
	@echo -e ${CL_CYN}"==========================================================================="${CL_RST}
	@echo -e ""

endif
