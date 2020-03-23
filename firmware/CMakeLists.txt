cmake_minimum_required(VERSION 3.10)

project(custom-keyboard)

set(CMAKE_SYSTEM_NAME Generic)
set(CMAKE_SYSTEM_PROCESSOR arm)
set(CMAKE_CROSSCOMPILING 1)

set(CMAKE_C_COMPILER arm-none-eabi-gcc CACHE PATH "" FORCE)
set(CMAKE_C_OBJCOPY arm-none-eabi-objcopy CACHE PATH "" FORCE)
set(CMAKE_C_GDB arm-none-eabi-gdb CACHE PATH "" FORCE)

set(DEVICE "STM32F413xx" CACHE STRING "Device P/N")
set(CPU "cortex-m4" CACHE STRING "Architecture type")
set(FPU "fpv4-sp-d16" CACHE STRING "Floating-point unit type")
set(FLOAT_ABI "hard" CACHE STRING "hardware or software floating point")
set(MCU_FLAGS "-mcpu=${CPU} -mthumb -mfpu=${FPU} -mfloat-abi=${FLOAT_ABI}" CACHE STRING "MCU flags")


set(CMAKE_C_FLAGS "${MCU_FLAGS} -Wall -fdata-sections -ffunction-sections")

set(CMAKE_C_FLAGS_RELEASE "-Os")
set(CMAKE_C_FLAGS_DEBUG "-Og -g3 -gdwarf-3 -gstrict-dwarf")

set(LINKER_SCRIPT "gcc/gcc/STM32F413RHTx_FLASH.ld")
set(CMAKE_EXE_LINKER_FLAGS "${MCU_FLAGS} -Wl,-T${LINKER_SCRIPT}")

add_executable(${PROJECT_NAME}.elf ${SOURCES})


add_custom_target(${PROJECT_NAME}.bin ALL DEPENDS ${PROJECT_NAME}.elf)
add_custom_command(TARGET ${PROJECT_NAME}.bin
    COMMAND ${CMAKE_C_OBJCOPY} ARGS -O binary ${PROJECT_NAME}.elf
    ${PROJECT_NAME}.bin)
