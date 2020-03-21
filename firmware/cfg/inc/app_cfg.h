#ifndef __APP_CFG_H
#define __APP_CFG_H

/**
 * @brief FS Application Config Macros
 */
#define  APP_CFG_FS_EN               DEF_ENABLED                /* Enable/disable the file system initialization code.  */

#define  APP_CFG_FS_DEV_CNT          3                          /* Maximum number of opened devices.                    */
#define  APP_CFG_FS_VOL_CNT          3                          /* Maximum number of opened volumes.                    */
#define  APP_CFG_FS_FILE_CNT         5                          /* Maximum number of opened files.                      */
#define  APP_CFG_FS_DIR_CNT          5                          /* Maximum number of opened directories.                */
#define  APP_CFG_FS_BUF_CNT          (4 * APP_CFG_FS_VOL_CNT)   /* Internal buffer count.                               */
#define  APP_CFG_FS_DEV_DRV_CNT      3                          /* Maximum number of different device drivers.          */
#define  APP_CFG_FS_WORKING_DIR_CNT  5                          /* Maximum number of active working directories.        */
#define  APP_CFG_FS_MAX_SEC_SIZE     512                        /* Maximum sector size supported.                       */

#define  APP_CFG_FS_IDE_EN           DEF_DISABLED               /* Enable/disable the IDE\CF initialization.            */
#define  APP_CFG_FS_MSC_EN           DEF_DISABLED               /* Enable/disable the MSC initialization.               */
#define  APP_CFG_FS_NAND_EN          DEF_DISABLED               /* Enable/disable the NAND initialization.              */
#define  APP_CFG_FS_NOR_EN           DEF_DISABLED               /* Enable/disable the NOR initialization.               */
#define  APP_CFG_FS_RAM_EN           DEF_DISABLED               /* Enable/disable the RAMDisk initialization.           */
#define  APP_CFG_FS_SD_EN            DEF_ENABLED                /* Enable/disable the SD (SPI) initialization.          */
#define  APP_CFG_FS_SD_CARD_EN       DEF_DISABLED               /* Enable/disable the SD (Card) initialization.         */



#define CLK_OS_CFG_TASK_PRIO                3u
#define USBD_OS_CFG_CORE_TASK_PRIO          4u
#define USBD_HID_OS_CFG_TMR_TASK_PRIO       5u

#define CLK_OS_CFG_TASK_STK_SIZE            256u
#define USBD_HID_OS_CFG_TMR_TASK_STK_SIZE   512u
#define USBD_OS_CFG_CORE_TASK_STK_SIZE      512u

#endif
