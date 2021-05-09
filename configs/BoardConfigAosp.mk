
# Kernel
include vendor/proton/configs/BoardConfigKernel.mk

# QCOM
ifeq ($(BOARD_USES_QCOM_HARDWARE),true)
include vendor/proton/configs/BoardConfigQcom.mk
endif


# Soong
include vendor/proton/configs/BoardConfigSoong.mk
