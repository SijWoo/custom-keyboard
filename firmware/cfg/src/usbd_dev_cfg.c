/*
*********************************************************************************************************
*                                            uC/USB-Device
*                                    The Embedded USB Device Stack
*
*                    Copyright 2004-2020 Silicon Laboratories Inc. www.silabs.com
*
*                                 SPDX-License-Identifier: APACHE-2.0
*
*               This software is subject to an open source license and is distributed by
*                Silicon Laboratories Inc. pursuant to the terms of the Apache License,
*                    Version 2.0 available at www.apache.org/licenses/LICENSE-2.0.
*
*********************************************************************************************************
*/

/*
*********************************************************************************************************
*
*                                    USB DEVICE CONFIGURATION FILE
*
*                                              TEMPLATE
*
* Filename : usbd_dev_cfg.c
* Version  : V4.06.00
*********************************************************************************************************
*/

#include  <usbd_core.h>
#include  <usbd_dev_cfg.h>
#include  "bsp_usbd_stm32f4.h"


/*
*********************************************************************************************************
*                                      USB DEVICE CONFIGURATION
*********************************************************************************************************
*/

const USBD_DEV_CFG  USBD_DevCfg_STM32F4 = {
    0xFFFE,                                                     /* Vendor  ID.                                          */
    0x1234,                                                     /* Product ID.                                          */
    0x0100,                                                     /* Device release number.                               */
   "Sijin Woo",                                                 /* Manufacturer  string.                                */
   "Blossum v1.0",                                              /* Product       string.                                */
   "BNN120",                                                    /* Serial number string.                                */
    USBD_LANG_ID_ENGLISH_US                                     /* String language ID.                                  */
};


/*
*********************************************************************************************************
*                                   USB DEVICE DRIVER CONFIGURATION
*********************************************************************************************************
*/

const USBD_DRV_CFG  USBD_DrvCfg_STM32F4 = {
    0x00000000,                                                 /* Base addr   of device controller hw registers.       */
    0x00000000,                                                 /* Base addr   of device controller dedicated mem.      */
             0u,                                                /* Size        of device controller dedicated mem.      */

    USBD_DEV_SPD_FULL,                                          /* Speed       of device controller.                    */

    USBD_DrvEP_InfoTbl_STM32F4                                  /* EP Info tbl of device controller.                    */
};
