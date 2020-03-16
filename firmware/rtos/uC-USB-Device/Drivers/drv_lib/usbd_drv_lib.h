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
*                                           Common library
*
* Filename : usbd_drv_lib.h
* Version  : V4.05.06
*********************************************************************************************************
*/

/*
*********************************************************************************************************
*                                                MODULE
*********************************************************************************************************
*/

#ifndef  USBD_DRV_LIB_MODULE_PRESENT
#define  USBD_DRV_LIB_MODULE_PRESENT


/*
*********************************************************************************************************
*                                            INCLUDE FILES
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                               EXTERNS
*********************************************************************************************************
*/

#ifdef   USBD_DRV_LIB_MODULE
#define  USBD_DRV_LIB_EXT
#else
#define  USBD_DRV_LIB_EXT  extern
#endif


/*
*********************************************************************************************************
*                                               DEFINES
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                             DATA TYPES
*********************************************************************************************************
*/

                                                                /* ------------------- SETUP PACKET ------------------- */
typedef  struct  usbd_drv_lib_setup_pkt {
    CPU_INT32U  SetupPkt[2u];                                   /* Setup req buf: |Request|Value|Index|Length|          */
} USBD_DRV_LIB_SETUP_PKT;


                                                                /* ---------------- SETUP PACKET QUEUE ---------------- */
typedef  struct  usbd_drv_lib_setup_pkt_q {
    USBD_DRV_LIB_SETUP_PKT  *SetupPktTblPtr;                    /* Ptr to table that contains the Q'd setup pkt.        */

    CPU_INT08U               IxIn;                              /* Ix where to put the next rxd setup pkt.              */
    CPU_INT08U               IxOut;                             /* Ix where to get the next setup pkt to give to core.  */
    CPU_INT08U               Nbr;                               /* Actual nbr of pkts in the buf.                       */
    CPU_INT08U               TblLen;                            /* Len of setup pkt tbl.                                */
} USBD_DRV_LIB_SETUP_PKT_Q;


/*
*********************************************************************************************************
*                                          GLOBAL VARIABLES
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                               MACROS
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                        CONFIGURATION ERRORS
*********************************************************************************************************
*/

void  USBD_DrvLib_SetupPktQInit      (USBD_DRV_LIB_SETUP_PKT_Q  *p_setup_pkt_q,
                                      CPU_INT08U                 q_size,
                                      USBD_ERR                  *p_err);

void  USBD_DrvLib_SetupPktQClr       (USBD_DRV_LIB_SETUP_PKT_Q  *p_setup_pkt_q);

void  USBD_DrvLib_SetupPktQAdd       (USBD_DRV_LIB_SETUP_PKT_Q  *p_setup_pkt_q,
                                      USBD_DRV                  *p_drv,
                                      CPU_INT32U                *p_setup_pkt_buf);

void  USBD_DrvLib_SetupPktQSubmitNext(USBD_DRV_LIB_SETUP_PKT_Q  *p_setup_pkt_q,
                                      USBD_DRV                  *p_drv);


/*
*********************************************************************************************************
*                                              MODULE END
*********************************************************************************************************
*/

#endif
