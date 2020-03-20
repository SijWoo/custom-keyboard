cmake_minimum_required(VERSION 3.10.2)

project(custom-keyboard)

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)
set(CMAKE_CROSSCOMPILING 1)

set(CMAKE_C_COMPILER arm-none-eabi-gcc CACHE PATH "" FORCE)
set(CMAKE_C_OBJCOPY arm-none-eabi-objcopy CACHE PATH "" FORCE)
set(CMAKE_C_GDB arm-none-eabi-gdb CACHE PATH "" FORCE)

set(CMAKE_C_FLAGS "-mcpu=cortex-m4 -mthumb -mfpu=fpv4-sp-d16 -mfloat-abi=hard -Wall -fdata-sections -ffunction-sections")

set(CMAKE_C_FLAGS_RELEASE "-Os")
set(CMAKE_C_FLAGS_DEBUG "-Og3 -g -gdwarf-3 -gstrict-dwarf")