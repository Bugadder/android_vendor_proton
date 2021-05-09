# Copyright (C) 2020 The Proton AOSP Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

CUSTOM_ROM_VERSION := 11.5.0-test1
CUSTOM_ROM_VERSION_CODE := CAF
PLATFORM_PROTON_VERSION := $(CUSTOM_ROM_VERSION)

ADDITIONAL_BUILD_PROPERTIES += \
    ro.build.version.custom=$(CUSTOM_ROM_VERSION)

# Output target zip name
PROTON_TARGET_ZIP := ProtonCAF_$(CUSTOM_BUILD)-R-v$(CUSTOM_ROM_VERSION)-$(shell date -u +%Y%m%d-%H%M)-UNOFFICIAL.zip

# ProtonAOSP Branding
ADDITIONAL_BUILD_PROPERTIES += \
    ro.proton.version=$(CUSTOM_ROM_VERSION) \
    ro.proton.version_code=$(CUSTOM_ROM_VERSION_CODE) \
    ro.proton.device=$(CUSTOM_BUILD)
