# Custom Keyboard Firmware
This uses ARM GNU to compile the code.

## BSP
You will need to modify the USB-D drivers if you switch to a different microcontroller other than the STM32F

### Need to Change
- usbd_dev_cfg.h
- usbd_dev_cfg.c
