#
# Copyright 2015 The Android Open Source Project
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
#

# This file is executed by build/envsetup.sh, and can use anything
# defined in envsetup.sh.
#
# In particular, you can add lunch options with the add_lunch_combo
# function: add_lunch_combo generic-eng

for var in eng user userdebug; do
  add_lunch_combo rr_cappu-$var
done


# # Patches
# echo
# echo "Applying Patches Automatically ..."
# cd system/core
# git apply -v ../../device/xiaomi/cappu/patches/0001-system_core.patch
# cd ../..
# cd hardware/interfaces
# git apply -v ../../device/xiaomi/cappu/patches/0002-hardware_interfaces.patch
# cd ../..
#
# echo "  :( "
# echo "==__==__=="
#
# echo
# echo "Copying 'SkUserConfig.h' & 'SkUserConfigManual.h' to Core ..."
# cp external/skia/include/config/SkUserConfig.h external/skia/include/core
# echo ""
# cp external/skia/include/config/SkUserConfigManual.h external/skia/include/core
# echo
# echo "...!DONE!"
# echo
