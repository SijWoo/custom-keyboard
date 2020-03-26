#ifndef __APP_CFG_H
#define __APP_CFG_H

#define CLK_OS_CFG_TASK_PRIO                3u
#define USBD_OS_CFG_CORE_TASK_PRIO          4u
#define USBD_HID_OS_CFG_TMR_TASK_PRIO       5u
#define APP_CFG_USBD_HID_WRITE_TASK_PRIO    6u
#define APP_CFG_USBD_HID_READ_TASK_PRIO     7u

#define CLK_OS_CFG_TASK_STK_SIZE            256u
#define USBD_HID_OS_CFG_TMR_TASK_STK_SIZE   512u
#define USBD_OS_CFG_CORE_TASK_STK_SIZE      1024u
#define APP_CFG_USBD_HID_TASK_STK_SIZE      256u

#endif
