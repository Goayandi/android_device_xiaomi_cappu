#!/bin/bash
cd ../../../..
cd system/core
git apply -v --check ../../device/xiaomi/cappu/patches/0001-system_core.patch
cd ../..
cd hardware/interfaces
git apply -v --check ../../device/xiaomi/cappu/patches/0002-hardware_interfaces.patch
cd ../..
