/*
*********************************************************************************************************
*                                            EXAMPLE CODE
*
*               This file is provided as an example on how to use Micrium products.
*
*               Please feel free to use any application code labeled as 'EXAMPLE CODE' in
*               your application products.  Example code may be used as is, in whole or in
*               part, or may be used as a reference only. This file can be modified as
*               required to meet the end-product requirements.
*
*               Please help us continue to provide the Embedded community with the finest
*               software available.  Your honesty is greatly appreciated.
*
*                    You can find our product's documentation at: doc.micrium.com
*
*                          For more information visit us at: www.micrium.com
*********************************************************************************************************
*/

/*
*********************************************************************************************************
*
*                                USB DEVICE HID CLASS TEST APPLICATION
*
*                                              TEMPLATE
*
* Filename : app_usbd_hid.c
* Version  : V4.05.06
*********************************************************************************************************
*/

/*
*********************************************************************************************************
*                                            INCLUDE FILES
*********************************************************************************************************
*/

#include  <app_usbd.h>

#if (APP_CFG_USBD_EN     == DEF_ENABLED) && \
    (APP_CFG_USBD_HID_EN == DEF_ENABLED)

#include  <usbd_hid.h>
#include  <os.h>


/*
*********************************************************************************************************
*                                            LOCAL DEFINES
*********************************************************************************************************
*/

#ifndef OS_VERSION
#error "OS_VERSION must be #define'd."
#endif

#if   (OS_VERSION > 30000u)
#define  APP_USBD_HID_OS_III_EN                           DEF_ENABLED
#else
#define  APP_USBD_HID_OS_III_EN                           DEF_DISABLED
#endif

#if (APP_CFG_USBD_HID_TEST_MOUSE_EN == DEF_DISABLED)
#define  APP_USBD_HID_REPORT_LEN                         4u
#else
#define  APP_USBD_HID_REPORT_LEN                         4u     /* Should always be 4 for mouse report.                 */
#endif


/*
*********************************************************************************************************
*                                           LOCAL CONSTANTS
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                          LOCAL DATA TYPES
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                            LOCAL TABLES
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                       LOCAL GLOBAL VARIABLES
*********************************************************************************************************
*/

static  CPU_INT08U  App_USBD_HID_Protocol;
static  CPU_INT08U  App_USBD_HID_ReportBuf[APP_USBD_HID_REPORT_LEN];

#if (APP_CFG_USBD_HID_TEST_MOUSE_EN == DEF_DISABLED)
#if (APP_USBD_HID_OS_III_EN == DEF_ENABLED)                     /* ---------------------- OS-III ---------------------- */
static  OS_TCB      App_USBD_HID_ReadTaskTCB;
static  OS_TCB      App_USBD_HID_WriteTaskTCB;
#endif
static  CPU_STK     App_USBD_HID_ReadTaskStk[APP_CFG_USBD_HID_TASK_STK_SIZE];
static  CPU_STK     App_USBD_HID_WriteTaskStk[APP_CFG_USBD_HID_TASK_STK_SIZE];

static  CPU_INT08U  App_USBD_HID_ReportDesc[] = {               /* HID vendor-specific report                           */
        USBD_HID_GLOBAL_USAGE_PAGE   + 2, 0xFF, 0xFF,
        USBD_HID_LOCAL_USAGE         + 1, 0xFF,
        USBD_HID_MAIN_COLLECTION     + 1, USBD_HID_COLLECTION_APPLICATION,

        USBD_HID_GLOBAL_USAGE_PAGE   + 2, 0xFF, 0xFF,
        USBD_HID_LOCAL_USAGE_MIN     + 1, 0x00,
#if   (APP_USBD_HID_REPORT_LEN > 32768)
        USBD_HID_LOCAL_USAGE_MAX     + 3, (APP_USBD_HID_REPORT_LEN - 1) & 0xFF, ((APP_USBD_HID_REPORT_LEN - 1) >> 8) & 0xFF, ((APP_USBD_HID_REPORT_LEN - 1) >> 16) & 0xFF, ((APP_USBD_HID_REPORT_LEN - 1) >> 24) & 0xFF,
#elif (APP_USBD_HID_REPORT_LEN >   128)
        USBD_HID_LOCAL_USAGE_MAX     + 2, (APP_USBD_HID_REPORT_LEN - 1) & 0xFF, ((APP_USBD_HID_REPORT_LEN - 1) >> 8) & 0xFF,
#else
        USBD_HID_LOCAL_USAGE_MAX     + 1,  APP_USBD_HID_REPORT_LEN - 1,
#endif
        USBD_HID_GLOBAL_LOG_MIN      + 1, 0x00,
        USBD_HID_GLOBAL_LOG_MAX      + 2, 0xFF, 0x00,
        USBD_HID_GLOBAL_REPORT_SIZE  + 1, 0x08,
#if   (APP_USBD_HID_REPORT_LEN >= 32768)
        USBD_HID_GLOBAL_REPORT_COUNT + 3, APP_USBD_HID_REPORT_LEN & 0xFF, (APP_USBD_HID_REPORT_LEN >> 8) & 0xFF, (APP_USBD_HID_REPORT_LEN >> 16) & 0xFF, (APP_USBD_HID_REPORT_LEN >> 24) & 0xFF,
#elif (APP_USBD_HID_REPORT_LEN >=   128)
        USBD_HID_GLOBAL_REPORT_COUNT + 2, APP_USBD_HID_REPORT_LEN & 0xFF, (APP_USBD_HID_REPORT_LEN >> 8) & 0xFF,
#else
        USBD_HID_GLOBAL_REPORT_COUNT + 1, APP_USBD_HID_REPORT_LEN,
#endif
        USBD_HID_MAIN_INPUT          + 1, USBD_HID_MAIN_DATA | USBD_HID_MAIN_VARIABLE | USBD_HID_MAIN_ABSOLUTE,

        USBD_HID_GLOBAL_USAGE_PAGE   + 2, 0xFF, 0xFF,
        USBD_HID_LOCAL_USAGE_MIN     + 1, 0x00,
#if   (APP_USBD_HID_REPORT_LEN > 32768)
        USBD_HID_LOCAL_USAGE_MAX     + 3, (APP_USBD_HID_REPORT_LEN - 1) & 0xFF, ((APP_USBD_HID_REPORT_LEN - 1) >> 8) & 0xFF, ((APP_USBD_HID_REPORT_LEN - 1) >> 16) & 0xFF, ((APP_USBD_HID_REPORT_LEN - 1) >> 24) & 0xFF,
#elif (APP_USBD_HID_REPORT_LEN >   128)
        USBD_HID_LOCAL_USAGE_MAX     + 2, (APP_USBD_HID_REPORT_LEN - 1) & 0xFF, ((APP_USBD_HID_REPORT_LEN - 1) >> 8) & 0xFF,
#else
        USBD_HID_LOCAL_USAGE_MAX     + 1,  APP_USBD_HID_REPORT_LEN - 1,
#endif
        USBD_HID_GLOBAL_LOG_MIN      + 1, 0x00,
        USBD_HID_GLOBAL_LOG_MAX      + 2, 0xFF, 0x00,
        USBD_HID_GLOBAL_REPORT_SIZE  + 1, 0x08,
#if   (APP_USBD_HID_REPORT_LEN >= 32768)
        USBD_HID_GLOBAL_REPORT_COUNT + 3, APP_USBD_HID_REPORT_LEN & 0xFF, (APP_USBD_HID_REPORT_LEN >> 8) & 0xFF, (APP_USBD_HID_REPORT_LEN >> 16) & 0xFF, (APP_USBD_HID_REPORT_LEN >> 24) & 0xFF,
#elif (APP_USBD_HID_REPORT_LEN >=   128)
        USBD_HID_GLOBAL_REPORT_COUNT + 2, APP_USBD_HID_REPORT_LEN & 0xFF, (APP_USBD_HID_REPORT_LEN >> 8) & 0xFF,
#else
        USBD_HID_GLOBAL_REPORT_COUNT + 1, APP_USBD_HID_REPORT_LEN,
#endif
        USBD_HID_MAIN_OUTPUT         + 1, USBD_HID_MAIN_DATA | USBD_HID_MAIN_VARIABLE | USBD_HID_MAIN_ABSOLUTE,

        USBD_HID_MAIN_ENDCOLLECTION
};

#else

#if (APP_USBD_HID_OS_III_EN == DEF_ENABLED)                     /* ---------------------- OS-III ---------------------- */
static  OS_TCB      App_USBD_HID_MouseTaskTCB;
#endif
static  CPU_STK     App_USBD_HID_MouseTaskStk[APP_CFG_USBD_HID_TASK_STK_SIZE];
static  CPU_INT32S  App_USBD_HID_X;
static  CPU_INT32S  App_USBD_HID_Y;

static  CPU_INT08U  App_USBD_HID_ReportDesc[] = {               /* HID Mouse report                                     */
    USBD_HID_GLOBAL_USAGE_PAGE           + 1, USBD_HID_USAGE_PAGE_GENERIC_DESKTOP_CONTROLS,
    USBD_HID_LOCAL_USAGE                 + 1, USBD_HID_CA_MOUSE,
    USBD_HID_MAIN_COLLECTION             + 1, USBD_HID_COLLECTION_APPLICATION,
        USBD_HID_LOCAL_USAGE             + 1, USBD_HID_CP_POINTER,
        USBD_HID_MAIN_COLLECTION         + 1, USBD_HID_COLLECTION_PHYSICAL,
            USBD_HID_GLOBAL_USAGE_PAGE   + 1, USBD_HID_USAGE_PAGE_BUTTON,
            USBD_HID_LOCAL_USAGE_MIN     + 1, 0x01,
            USBD_HID_LOCAL_USAGE_MAX     + 1, 0x03,
            USBD_HID_GLOBAL_LOG_MIN      + 1, 0x00,
            USBD_HID_GLOBAL_LOG_MAX      + 1, 0x01,
            USBD_HID_GLOBAL_REPORT_COUNT + 1, 0x03,
            USBD_HID_GLOBAL_REPORT_SIZE  + 1, 0x01,
            USBD_HID_MAIN_INPUT          + 1, USBD_HID_MAIN_DATA | USBD_HID_MAIN_VARIABLE | USBD_HID_MAIN_ABSOLUTE,
            USBD_HID_GLOBAL_REPORT_COUNT + 1, 0x01,
            USBD_HID_GLOBAL_REPORT_SIZE  + 1, 0x0D,
            USBD_HID_MAIN_INPUT          + 1, USBD_HID_MAIN_CONSTANT,
            USBD_HID_GLOBAL_USAGE_PAGE   + 1, USBD_HID_USAGE_PAGE_GENERIC_DESKTOP_CONTROLS,
            USBD_HID_LOCAL_USAGE         + 1, USBD_HID_DV_X,
            USBD_HID_LOCAL_USAGE         + 1, USBD_HID_DV_Y,
            USBD_HID_GLOBAL_LOG_MIN      + 1, 0x81,
            USBD_HID_GLOBAL_LOG_MAX      + 1, 0x7F,
            USBD_HID_GLOBAL_REPORT_SIZE  + 1, 0x08,
            USBD_HID_GLOBAL_REPORT_COUNT + 1, 0x02,
            USBD_HID_MAIN_INPUT          + 1, USBD_HID_MAIN_DATA | USBD_HID_MAIN_VARIABLE | USBD_HID_MAIN_RELATIVE,
        USBD_HID_MAIN_ENDCOLLECTION,
    USBD_HID_MAIN_ENDCOLLECTION
};
#endif


/*
*********************************************************************************************************
*                                      LOCAL FUNCTION PROTOTYPES
*********************************************************************************************************
*/

#if (APP_CFG_USBD_HID_TEST_MOUSE_EN == DEF_ENABLED)
static  void         App_USBD_HID_MouseTask       (void        *p_arg);

static  void         App_USBD_HID_MouseSetReport  (CPU_INT08U  *p_buf);

#else

static  void         App_USBD_HID_ReadTask        (void        *p_arg);

static  void         App_USBD_HID_WriteTask       (void        *p_arg);
#endif

static  CPU_BOOLEAN  App_USBD_HID_FeatureReportGet(CPU_INT08U   class_nbr,
                                                   CPU_INT08U   report_id,
                                                   CPU_INT08U  *p_report_buf,
                                                   CPU_INT16U   report_len);

static  CPU_BOOLEAN  App_USBD_HID_FeatureReportSet(CPU_INT08U   class_nbr,
                                                   CPU_INT08U   report_id,
                                                   CPU_INT08U  *p_report_buf,
                                                   CPU_INT16U   report_len);

static  CPU_INT08U   App_USBD_HID_ProtocolGet     (CPU_INT08U   class_nbr,
                                                   USBD_ERR    *p_err);

static  void         App_USBD_HID_ProtocolSet     (CPU_INT08U   class_nbr,
                                                   CPU_INT08U   protocol,
                                                   USBD_ERR    *p_err);

static  void         App_USBD_HID_ReportSet       (CPU_INT08U   class_nbr,
                                                   CPU_INT08U   report_id,
                                                   CPU_INT08U  *p_report_buf,
                                                   CPU_INT16U   report_len);


static  USBD_HID_CALLBACK  App_USBD_HID_Callback = {
    App_USBD_HID_FeatureReportGet,
    App_USBD_HID_FeatureReportSet,
    App_USBD_HID_ProtocolGet,
    App_USBD_HID_ProtocolSet,
    App_USBD_HID_ReportSet
};


/*
*********************************************************************************************************
*                                     LOCAL CONFIGURATION ERRORS
*********************************************************************************************************
*/

#if    (APP_CFG_USBD_HID_TEST_MOUSE_EN == DEF_DISABLED)
#if    (APP_USBD_HID_REPORT_LEN < 4)
#error "APP_USBD_HID_REPORT_LEN must be at least 4 octets"
#endif
#endif


/*
*********************************************************************************************************
*                                         App_USBD_HID_Init()
*
* Description : Add a HID interface to the USB device stack.
*
* Argument(s) : dev_nbr    Device number.
*
*               cfg_hs     Index of high-speed configuration to which this interface will be added to.
*
*               cfg_fs     Index of full-speed configuration to which this interface will be added to.
*
* Return(s)   : DEF_OK,    if HID interface successfully added.
*
*               DEF_FAIL,  otherwise.
*
* Note(s)     : none.
*********************************************************************************************************
*/

CPU_BOOLEAN  App_USBD_HID_Init (CPU_INT08U  dev_nbr,
                                CPU_INT08U  cfg_hs,
                                CPU_INT08U  cfg_fs)
{
    USBD_ERR    err;
    USBD_ERR    err_hs;
    USBD_ERR    err_fs;
    CPU_INT08U  class_nbr;
    OS_ERR      os_err;


    err_hs = USBD_ERR_NONE;
    err_fs = USBD_ERR_NONE;

#if (APP_CFG_USBD_HID_TEST_MOUSE_EN == DEF_ENABLED)
    App_USBD_HID_X = 101;
    App_USBD_HID_Y = 101;
#endif

    APP_TRACE_DBG(("        Initializing HID class ... \r\n"));

    USBD_HID_Init(&err);                                        /* Init HID class.                                      */
    if (err != USBD_ERR_NONE) {
        APP_TRACE_DBG(("        ... could not initialize HID class w/err = %d\r\n\r\n", err));
        return (DEF_FAIL);
    }
                                                                /* Create a HID class instance.                         */
    class_nbr = USBD_HID_Add(             USBD_HID_SUBCLASS_BOOT,
#if (APP_CFG_USBD_HID_TEST_MOUSE_EN == DEF_ENABLED)
                                          USBD_HID_PROTOCOL_MOUSE,
#else
                                          USBD_HID_PROTOCOL_KBD,
#endif
                                          USBD_HID_COUNTRY_CODE_NOT_SUPPORTED,
                                         &App_USBD_HID_ReportDesc[0],
                                          sizeof(App_USBD_HID_ReportDesc),
                            (CPU_INT08U *)0,
                                          0u,
                                          2u,
                                          2u,
                                          DEF_YES,
                                         &App_USBD_HID_Callback,
                                         &err);
    if (err != USBD_ERR_NONE) {
        APP_TRACE_DBG(("        ... could not instantiate a HID class w/err = %d\r\n\r\n", err));
        return (DEF_FAIL);
    }

    if (cfg_hs != USBD_CFG_NBR_NONE) {
                                                                /* Add HID class to HS dflt cfg.                        */
        USBD_HID_CfgAdd(class_nbr, dev_nbr, cfg_hs, &err_hs);
        if (err_hs != USBD_ERR_NONE) {
            APP_TRACE_DBG(("        ... could not add HID class instance #%d to HS configuration w/err = %d\r\n\r\n", class_nbr, err_hs));
        }
    }

    if (cfg_fs != USBD_CFG_NBR_NONE) {
                                                                /* Add HID class to FS dflt cfg.                        */
        USBD_HID_CfgAdd(class_nbr, dev_nbr, cfg_fs, &err_fs);
        if (err_fs != USBD_ERR_NONE) {
            APP_TRACE_DBG(("        ... could not add HID class instance #%d to FS configuration w/err = %d\r\n\r\n", class_nbr, err_fs));
        }
    }

    if ((err_hs != USBD_ERR_NONE) &&                            /* If HS and FS cfg fail, stop class init.              */
        (err_fs != USBD_ERR_NONE)) {
        return (DEF_FAIL);
    }

#if (APP_CFG_USBD_HID_TEST_MOUSE_EN == DEF_DISABLED)
#if (APP_USBD_HID_OS_III_EN == DEF_ENABLED)                     /* ---------------------- OS-III ---------------------- */
    OSTaskCreate(                 &App_USBD_HID_ReadTaskTCB,
                                  "USB Device HID Read",
                                   App_USBD_HID_ReadTask,
                 (void *)(CPU_ADDR)class_nbr,
                                   APP_CFG_USBD_HID_READ_TASK_PRIO,
                                  &App_USBD_HID_ReadTaskStk[0],
                                   APP_CFG_USBD_HID_TASK_STK_SIZE / 10u,
                                   APP_CFG_USBD_HID_TASK_STK_SIZE,
                                   0u,
                                   0u,
                 (void *)          0,
                                   OS_OPT_TASK_STK_CHK | OS_OPT_TASK_STK_CLR,
                                  &os_err);
    if (os_err != OS_ERR_NONE) {
        APP_TRACE_DBG(("        ... could not add HID read task w/err = %d\r\n\r\n", os_err));
        return (DEF_FAIL);
    }

    OSTaskCreate(                 &App_USBD_HID_WriteTaskTCB,
                                  "USB Device HID Write",
                                   App_USBD_HID_WriteTask,
                 (void *)(CPU_ADDR)class_nbr,
                                   APP_CFG_USBD_HID_WRITE_TASK_PRIO,
                                  &App_USBD_HID_WriteTaskStk[0],
                                   APP_CFG_USBD_HID_TASK_STK_SIZE / 10u,
                                   APP_CFG_USBD_HID_TASK_STK_SIZE,
                                   0u,
                                   0u,
                 (void *)          0,
                                   OS_OPT_TASK_STK_CHK | OS_OPT_TASK_STK_CLR,
                                  &os_err);
    if (os_err != OS_ERR_NONE) {
        APP_TRACE_DBG(("        ... could not add HID write task w/err = %d\r\n\r\n", os_err));
        return (DEF_FAIL);
    }
#else                                                           /* ---------------------- OS-II ----------------------- */
#if (OS_STK_GROWTH == 1u)
    os_err = OSTaskCreateExt(                  App_USBD_HID_ReadTask,
                             (void *)(CPU_ADDR)class_nbr,
                                              &App_USBD_HID_ReadTaskStk[APP_CFG_USBD_HID_TASK_STK_SIZE - 1],
                                               APP_CFG_USBD_HID_READ_TASK_PRIO,
                                               APP_CFG_USBD_HID_READ_TASK_PRIO,
                                              &App_USBD_HID_ReadTaskStk[0],
                                               APP_CFG_USBD_HID_TASK_STK_SIZE,
                             (void *)          0,
                                               OS_TASK_OPT_STK_CHK | OS_TASK_OPT_STK_CLR);
#else
    os_err = OSTaskCreateExt(                  App_USBD_HID_ReadTask,
                             (void *)(CPU_ADDR)class_nbr,
                                              &App_USBD_HID_ReadTaskStk[0],
                                               APP_CFG_USBD_HID_READ_TASK_PRIO,
                                               APP_CFG_USBD_HID_READ_TASK_PRIO,
                                              &App_USBD_HID_ReadTaskStk[APP_CFG_USBD_HID_TASK_STK_SIZE - 1],
                                               APP_CFG_USBD_HID_TASK_STK_SIZE,
                             (void *)          0,
                                               OS_TASK_OPT_STK_CHK | OS_TASK_OPT_STK_CLR);
#endif
    if (os_err != OS_ERR_NONE) {
        APP_TRACE_DBG(("        ... could not add HID read task w/err = %d\r\n\r\n", os_err));
        return (DEF_FAIL);
    }
#if (OS_TASK_NAME_EN == 1u)
    OSTaskNameSet(APP_CFG_USBD_HID_READ_TASK_PRIO, (INT8U *)"USB Device HID Read", &os_err);
#endif

#if (OS_STK_GROWTH == 1u)
    os_err = OSTaskCreateExt(                  App_USBD_HID_WriteTask,
                             (void *)(CPU_ADDR)class_nbr,
                                              &App_USBD_HID_WriteTaskStk[APP_CFG_USBD_HID_TASK_STK_SIZE - 1],
                                               APP_CFG_USBD_HID_WRITE_TASK_PRIO,
                                               APP_CFG_USBD_HID_WRITE_TASK_PRIO,
                                              &App_USBD_HID_WriteTaskStk[0],
                                               APP_CFG_USBD_HID_TASK_STK_SIZE,
                             (void *)          0,
                                               OS_TASK_OPT_STK_CHK | OS_TASK_OPT_STK_CLR);
#else
    os_err = OSTaskCreateExt(                  App_USBD_HID_WriteTask,
                             (void *)(CPU_ADDR)class_nbr,
                                              &App_USBD_HID_WriteTaskStk[0],
                                               APP_CFG_USBD_HID_WRITE_TASK_PRIO,
                                               APP_CFG_USBD_HID_WRITE_TASK_PRIO,
                                              &App_USBD_HID_WriteTaskStk[APP_CFG_USBD_HID_TASK_STK_SIZE - 1],
                                               APP_CFG_USBD_HID_TASK_STK_SIZE,
                             (void *)          0,
                                               OS_TASK_OPT_STK_CHK | OS_TASK_OPT_STK_CLR);
#endif
    if (os_err != OS_ERR_NONE) {
        APP_TRACE_DBG(("        ... could not add HID write task w/err = %d\r\n\r\n", os_err));
        return (DEF_FAIL);
    }
#if (OS_TASK_NAME_EN > 0u)
    OSTaskNameSet(APP_CFG_USBD_HID_WRITE_TASK_PRIO, (INT8U *)"USB Device HID Write", &os_err);
#endif
#endif

#else

#if (APP_USBD_HID_OS_III_EN == DEF_ENABLED)                     /* ---------------------- OS-III ---------------------- */
    OSTaskCreate(                 &App_USBD_HID_MouseTaskTCB,
                                  "USB Device HID Mouse",
                                   App_USBD_HID_MouseTask,
                 (void *)(CPU_ADDR)class_nbr,
                                   APP_CFG_USBD_HID_MOUSE_TASK_PRIO,
                                  &App_USBD_HID_MouseTaskStk[0],
                                   APP_CFG_USBD_HID_TASK_STK_SIZE / 10u,
                                   APP_CFG_USBD_HID_TASK_STK_SIZE,
                                   0u,
                                   0u,
                 (void *)          0,
                                   OS_OPT_TASK_STK_CHK | OS_OPT_TASK_STK_CLR,
                                  &os_err);
    if (os_err != OS_ERR_NONE) {
        APP_TRACE_DBG(("        ... could not add HID mouse task w/err = %d\r\n\r\n", os_err));
        return (DEF_FAIL);
    }
#else                                                           /* ---------------------- OS-II ----------------------- */
#if (OS_STK_GROWTH == 1u)
    os_err = OSTaskCreateExt(                  App_USBD_HID_MouseTask,
                             (void *)(CPU_ADDR)class_nbr,
                                              &App_USBD_HID_MouseTaskStk[APP_CFG_USBD_HID_TASK_STK_SIZE - 1],
                                               APP_CFG_USBD_HID_MOUSE_TASK_PRIO,
                                               APP_CFG_USBD_HID_MOUSE_TASK_PRIO,
                                              &App_USBD_HID_MouseTaskStk[0],
                                               APP_CFG_USBD_HID_TASK_STK_SIZE,
                             (void *)          0,
                                               OS_TASK_OPT_STK_CHK | OS_TASK_OPT_STK_CLR);
#else
    os_err = OSTaskCreateExt(                  App_USBD_HID_MouseTask,
                             (void *)(CPU_ADDR)class_nbr,
                                              &App_USBD_HID_MouseTaskStk[0],
                                               APP_CFG_USBD_HID_MOUSE_TASK_PRIO,
                                               APP_CFG_USBD_HID_MOUSE_TASK_PRIO,
                                              &App_USBD_HID_MouseTaskStk[APP_CFG_USBD_HID_TASK_STK_SIZE - 1],
                                               APP_CFG_USBD_HID_TASK_STK_SIZE,
                             (void *)          0,
                                               OS_TASK_OPT_STK_CHK | OS_TASK_OPT_STK_CLR);
#endif
    if (os_err != OS_ERR_NONE) {
        APP_TRACE_DBG(("        ... could not add HID mouse task w/err = %d\r\n\r\n", os_err));
        return (DEF_FAIL);
    }
#if (OS_TASK_NAME_EN > 0u)
    OSTaskNameSet(APP_CFG_USBD_HID_MOUSE_TASK_PRIO, (INT8U *)"USB Device HID Mouse", &os_err);
#endif
#endif

#endif

    return (DEF_OK);
}


/*
*********************************************************************************************************
*                                      App_USBD_HID_MouseTask()
*
* Description : Perform HID writes to host. The HID writes simulate the movement of a mouse.
*
* Argument(s) : p_arg    Argument passed to 'App_USBD_HID_MouseTask()' by 'OSTaskCreate()'.
*
* Return(s)   : none.
*
* Note(s)     : none.
*********************************************************************************************************
*/

#if (APP_CFG_USBD_HID_TEST_MOUSE_EN == DEF_ENABLED)
static  void  App_USBD_HID_MouseTask (void  *p_arg)
{
    CPU_INT08U   class_nbr;
    CPU_BOOLEAN  conn;
    USBD_ERR     err;
#if (APP_USBD_HID_OS_III_EN == DEF_ENABLED)                     /* ---------------------- OS-III ---------------------- */
    OS_ERR       os_err;
#endif


    class_nbr = (CPU_INT08U)(CPU_ADDR)p_arg;

    while (DEF_TRUE) {
        conn = USBD_HID_IsConn(class_nbr);
        while (conn != DEF_YES) {
#if (APP_USBD_HID_OS_III_EN == DEF_ENABLED)
            OSTimeDlyHMSM(0u, 0u, 0u, 250u, OS_OPT_TIME_HMSM_NON_STRICT, &os_err);
            (void)os_err;
#else
            OSTimeDlyHMSM(0u, 0u, 0u, 250u);
#endif
            conn = USBD_HID_IsConn(class_nbr);
        }

        App_USBD_HID_MouseSetReport(&App_USBD_HID_ReportBuf[0u]);

        (void)USBD_HID_Wr( class_nbr,
                          &App_USBD_HID_ReportBuf[0],
                           APP_USBD_HID_REPORT_LEN,
                           0u,
                          &err);
#if (APP_USBD_HID_OS_III_EN == DEF_ENABLED)
        OSTimeDlyHMSM(0u, 0u, 0u, 100u, OS_OPT_TIME_HMSM_NON_STRICT, &os_err);
        (void)os_err;
#else
        OSTimeDlyHMSM(0u, 0u, 0u, 100u);
#endif
    }
}
#endif


/*
*********************************************************************************************************
*                                       App_USBD_HID_ReadTask()
*
* Description : Perform reads from HID.
*
* Argument(s) : p_arg    Argument passed to 'App_USBD_HID_ReadTask()' by 'OSTaskCreate()'.
*
* Return(s)   : none.
*
* Note(s)     : none.
*********************************************************************************************************
*/

#if (APP_CFG_USBD_HID_TEST_MOUSE_EN == DEF_DISABLED)
static  void  App_USBD_HID_ReadTask (void  *p_arg)
{
    CPU_INT08U   class_nbr;
    CPU_BOOLEAN  conn;
    USBD_ERR     err;
#if (APP_USBD_HID_OS_III_EN == DEF_ENABLED)                     /* ---------------------- OS-III ---------------------- */
    OS_ERR       os_err;
#endif


    class_nbr = (CPU_INT08U)(CPU_ADDR)p_arg;

    while (DEF_TRUE) {
        conn = USBD_HID_IsConn(class_nbr);
        while (conn != DEF_YES) {
#if (APP_USBD_HID_OS_III_EN == DEF_ENABLED)
            OSTimeDlyHMSM(0u, 0u, 0u, 250u, OS_OPT_TIME_HMSM_NON_STRICT, &os_err);
            (void)os_err;
#else
            OSTimeDlyHMSM(0u, 0u, 0u, 250u);
#endif

            conn = USBD_HID_IsConn(class_nbr);
        }

        (void)USBD_HID_Rd( class_nbr,
                          &App_USBD_HID_ReportBuf[0],
                           APP_USBD_HID_REPORT_LEN,
                           0u,
                          &err);
        if (err != USBD_ERR_NONE)  {
            APP_TRACE_DBG(("        ... HID demo failed to receive data from host w/err = %d\r\n", err));
        }
    }
}
#endif


/*
*********************************************************************************************************
*                                      App_USBD_HID_WriteTask()
*
* Description : Perform writes to HID.
*
* Argument(s) : p_arg    Argument passed to 'App_USBD_HID_WriteTask()' by 'OSTaskCreate()'.
*
* Return(s)   : none.
*
* Note(s)     : none.
*********************************************************************************************************
*/

#if (APP_CFG_USBD_HID_TEST_MOUSE_EN == DEF_DISABLED)
static  void  App_USBD_HID_WriteTask (void  *p_arg)
{
    CPU_INT08U   class_nbr;
    CPU_BOOLEAN  conn;
    USBD_ERR     err;
#if (APP_USBD_HID_OS_III_EN == DEF_ENABLED)                     /* ---------------------- OS-III ---------------------- */
    OS_ERR       os_err;
#endif


    class_nbr = (CPU_INT08U)(CPU_ADDR)p_arg;

    Mem_Clr(&App_USBD_HID_ReportBuf[0], APP_USBD_HID_REPORT_LEN);

    while (DEF_TRUE) {
        conn = USBD_HID_IsConn(class_nbr);
        while (conn != DEF_YES) {
#if (APP_USBD_HID_OS_III_EN == DEF_ENABLED)
            OSTimeDlyHMSM(0u, 0u, 0u, 250u, OS_OPT_TIME_HMSM_NON_STRICT, &os_err);
            (void)os_err;
#else
            OSTimeDlyHMSM(0u, 0u, 0u, 250u);
#endif

            conn = USBD_HID_IsConn(class_nbr);
        }

        App_USBD_HID_ReportBuf[0]++;
        App_USBD_HID_ReportBuf[1] += 2;
        App_USBD_HID_ReportBuf[2] += 3;
        App_USBD_HID_ReportBuf[3] += 4;

        (void)USBD_HID_Wr( class_nbr,
                          &App_USBD_HID_ReportBuf[0],
                           APP_USBD_HID_REPORT_LEN,
                           0u,
                          &err);
        if (err != USBD_ERR_NONE)  {
            APP_TRACE_DBG(("        ... HID demo failed to send data to host w/err = %d\r\n", err));
        }
#if (APP_USBD_HID_OS_III_EN == DEF_ENABLED)
        OSTimeDlyHMSM(0u, 0u, 1u, 0u, OS_OPT_TIME_HMSM_NON_STRICT, &os_err);
        (void)os_err;
#else
        OSTimeDlyHMSM(0u, 0u, 1u, 0u);
#endif
    }
}
#endif


/*
*********************************************************************************************************
*********************************************************************************************************
*                                          USB HID CALLBACKS
*********************************************************************************************************
*********************************************************************************************************
*/

/*
*********************************************************************************************************
*                                   App_USBD_HID_FeatureReportGet()
*
* Description : Get HID feature report corresponding to report ID.
*
* Argument(s) : class_nbr       Class instance number.
*
*               report_id       Report ID.
*
*               p_report_buf    Pointer to feature report buffer.
*
*               report_len      Length of report.
*
* Return(s)   : DEF_OK,         if NO error(s) occurred and report ID is supported.
*
*               DEF_FAIL,       otherwise.
*
* Note(s)     : (1) Report ID must not be written into the feature report buffer.
*********************************************************************************************************
*/

static  CPU_BOOLEAN  App_USBD_HID_FeatureReportGet (CPU_INT08U   class_nbr,
                                                    CPU_INT08U   report_id,
                                                    CPU_INT08U  *p_report_buf,
                                                    CPU_INT16U   report_len)
{
    (void)class_nbr;
    (void)report_id;

    Mem_Clr(p_report_buf, report_len);

    return (DEF_OK);
}


/*
*********************************************************************************************************
*                                   App_USBD_HID_FeatureReportSet()
*
* Description : Set HID feature report corresponding to report ID.
*
* Argument(s) : class_nbr       Class instance number.
*
*               report_id       Report ID.
*
*               p_report_buf    Pointer to feature report buffer.
*
*               report_len      Length of report.
*
* Return(s)   : DEF_OK,         if NO error(s) occurred and report ID is supported.
*
*               DEF_FAIL,       otherwise.
*
* Note(s)     : (1) Report ID is not present in the feature report buffer.
*********************************************************************************************************
*/

static  CPU_BOOLEAN  App_USBD_HID_FeatureReportSet (CPU_INT08U   class_nbr,
                                                    CPU_INT08U   report_id,
                                                    CPU_INT08U  *p_report_buf,
                                                    CPU_INT16U   report_len)
{
    (void)class_nbr;
    (void)report_id;
    (void)p_report_buf;
    (void)report_len;

    return (DEF_OK);
}


/*
*********************************************************************************************************
*                                     App_USBD_HID_ProtocolGet()
*
* Description : Retrieve active protocol: BOOT or REPORT protocol.
*
* Argument(s) : class_nbr    Class instance number.
*
*               p_err        Pointer to variable that will receive the return error code from this function :
*
*                                USBD_ERR_NONE    Protocol successfully retrieved.
*
* Return(s)   : Protocol,    if NO error(s).
*
*               0,           otherwise.
*
* Note(s)     : none.
*********************************************************************************************************
*/

static  CPU_INT08U  App_USBD_HID_ProtocolGet (CPU_INT08U   class_nbr,
                                              USBD_ERR    *p_err)
{
    (void)class_nbr;

   *p_err = USBD_ERR_NONE;

    return (App_USBD_HID_Protocol);
}


/*
*********************************************************************************************************
*                                     App_USBD_HID_ProtocolSet()
*
* Description : Store active protocol: BOOT or REPORT protocol.
*
* Argument(s) : class_nbr    Class instance number.
*
*               protocol     Protocol.
*
*               p_err        Pointer to variable that will receive the return error code from this function :
*
*                                USBD_ERR_NONE    Protocol successfully set.
* Return(s)   : none.
*
* Note(s)     : none.
*********************************************************************************************************
*/

static  void  App_USBD_HID_ProtocolSet (CPU_INT08U   class_nbr,
                                        CPU_INT08U   protocol,
                                        USBD_ERR    *p_err)
{
    (void)class_nbr;

    App_USBD_HID_Protocol = protocol;

   *p_err = USBD_ERR_NONE;
}


/*
*********************************************************************************************************
*                                      App_USBD_HID_ReportSet()
*
* Description : Notification of a new set report received on control endpoint.
*
* Argument(s) : class_nbr       Class instance number.
*
*               report_id       Report ID.
*
*               p_report_buf    Pointer to report buffer.
*
*               report_len      Length of report.
*
* Return(s)   : None.
*
* Note(s)     : none.
*********************************************************************************************************
*/

static  void  App_USBD_HID_ReportSet (CPU_INT08U   class_nbr,
                                      CPU_INT08U   report_id,
                                      CPU_INT08U  *p_report_buf,
                                      CPU_INT16U   report_len)
{
    (void)class_nbr;
    (void)report_id;
    (void)p_report_buf;
    (void)report_len;
}


/*
*********************************************************************************************************
*                                    App_USBD_HID_MouseSetReport()
*
* Description : Populate buffer with mouse report.
*
* Argument(s) : p_buf    Pointer to buffer.
*
* Return(s)   : none.
*
* Note(s)     : none.
*********************************************************************************************************
*/

#if (APP_CFG_USBD_HID_TEST_MOUSE_EN == DEF_ENABLED)
static void  App_USBD_HID_MouseSetReport (CPU_INT08U  *p_buf)
{
    CPU_SR_ALLOC();


    p_buf[0] = 0;
    p_buf[1] = 0;

    CPU_CRITICAL_ENTER();
    p_buf[2] = (App_USBD_HID_X > 0) ? 50 : -50;
    p_buf[3] = (App_USBD_HID_Y > 0) ? 50 : -50;

    App_USBD_HID_X = !App_USBD_HID_X;
    App_USBD_HID_Y = !App_USBD_HID_Y;
    CPU_CRITICAL_EXIT();
}
#endif


/*
*********************************************************************************************************
*                                             MODULE END
*********************************************************************************************************
*/

#endif
