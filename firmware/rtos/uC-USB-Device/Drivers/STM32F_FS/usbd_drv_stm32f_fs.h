/*
*********************************************************************************************************
*                                            uC/USB-Device
*                                    The Embedded USB Device Stack
*
*                         (c) Copyright 2004-2019; Silicon Laboratories Inc.,
*                                400 W. Cesar Chavez, Austin, TX 78701
*
*                   All rights reserved. Protected by international copyright laws.
*
*                  Your use of this software is subject to your acceptance of the terms
*                  of a Silicon Labs Micrium software license, which can be obtained by
*                  contacting info@micrium.com. If you do not agree to the terms of this
*                  license, you may not use this software.
*
*                  Please help us continue to provide the Embedded community with the finest
*                  software available. Your honesty is greatly appreciated.
*
*                    You can find our product's documentation at: doc.micrium.com
*
*                          For more information visit us at: www.micrium.com
*********************************************************************************************************
*/

/*
*********************************************************************************************************
*
*                                          USB DEVICE DRIVER
*
*                                  USB ON-THE-GO FULL-SPEED (OTG_FS)
*
* Filename : usbd_drv_stm32f_fs.h
* Version  : V4.05.06
*********************************************************************************************************
* Note(s)  : (1) You can find specific information about this driver at:
*                https://doc.micrium.com/display/USBDDRV/STM32F_FS
*********************************************************************************************************
*/

/*
*********************************************************************************************************
*                                               MODULE
*
* Note(s) : (1) This USB device driver function header file is protected from multiple pre-processor
*               inclusion through use of the USB device driver module present pre-processor macro
*               definition.
*********************************************************************************************************
*/

#ifndef  USBD_DRV_STM32F_FS_MODULE_PRESENT                      /* See Note #1.                                         */
#define  USBD_DRV_STM32F_FS_MODULE_PRESENT

/*
*********************************************************************************************************
*                                          USB DEVICE DRIVER
* Note(s) : (1) The following MCUs are support by USBD_DrvAPI_STM32F_FS API:
*
*                          STMicroelectronics  STM32F105xx series.
*                          STMicroelectronics  STM32F107xx series.
*                          STMicroelectronics  STM32F205xx series.
*                          STMicroelectronics  STM32F207xx series.
*                          STMicroelectronics  STM32F215xx series.
*                          STMicroelectronics  STM32F217xx series.
*                          STMicroelectronics  STM32F405xx series.
*                          STMicroelectronics  STM32F407xx series.
*                          STMicroelectronics  STM32F415xx series.
*                          STMicroelectronics  STM32F417xx series.
*
*           (2) The following MCUs are support by USBD_DrvAPI_STM32F_OTG_FS API:
*
*                          STMicroelectronics  STM32F74xx series.
*                          STMicroelectronics  STM32F75xx series.
*
*           (3) The following MCUs are support by USBD_DrvAPI_EFM32_OTG_FS API:
*
*                          Silicon Labs        EFM32 Giant   Gecko series.
*                          Silicon Labs        EFM32 Wonder  Gecko series.
*                          Silicon Labs        EFM32 Leopard Gecko series.
*
*           (4) The following MCUs are support by USBD_DrvAPI_XMC_OTG_FS API:
*
*                          Infineon            XMC4100 series.
*                          Infineon            XMC4200 series.
*                          Infineon            XMC4300 series.
*                          Infineon            XMC4400 series.
*                          Infineon            XMC4500 series.
*                          Infineon            XMC4700 series.
*                          Infineon            XMC4800 series.
*
*********************************************************************************************************
*/

extern  USBD_DRV_API  USBD_DrvAPI_STM32F_FS;
extern  USBD_DRV_API  USBD_DrvAPI_STM32F_OTG_FS;
extern  USBD_DRV_API  USBD_DrvAPI_EFM32_OTG_FS;
extern  USBD_DRV_API  USBD_DrvAPI_XMC_OTG_FS;


/*
*********************************************************************************************************
*                                             MODULE END
*********************************************************************************************************
*/

#endif
