/*
*********************************************************************************************************
*                                                uC/FS
*                                      The Embedded File System
*
*                    Copyright 2008-2020 Silicon Laboratories Inc. www.silabs.com
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
*                                  FILE SYSTEM DIRECTORY MANAGEMENT
*
* Filename : fs_dir.h
* Version  : V4.08.00
*********************************************************************************************************
*/

/*
*********************************************************************************************************
*                                            INCLUDE GUARD
*********************************************************************************************************
*/

#ifndef  FS_DIR_H
#define  FS_DIR_H


/*
*********************************************************************************************************
*                                            INCLUDE FILES
*********************************************************************************************************
*/

#include  <cpu.h>
#include  "fs_cfg_fs.h"
#include  "fs_ctr.h"
#include  "fs_entry.h"
#include  "fs_err.h"
#include  "fs_type.h"


/*
*********************************************************************************************************
*                                               MODULE
*
* Note(s) : (1) The following directory-module-present configuration value MUST be pre-#define'd in
*               'fs_cfg_fs.h' PRIOR to all other file system modules that require Directory Module
*               configuration (see 'fs_cfg_fs.h  FILE SYSTEM CONFIGURATION) :
*
*                   FS_DIR_MODULE_PRESENT
*********************************************************************************************************
*/

#ifdef   FS_DIR_MODULE_PRESENT                                  /* See Note #1.                                         */


/*
*********************************************************************************************************
*                                               EXTERNS
*********************************************************************************************************
*/

#ifdef   FS_DIR_MODULE
#define  FS_DIR_EXT
#else
#define  FS_DIR_EXT  extern
#endif


/*
*********************************************************************************************************
*                                               DEFINES
*********************************************************************************************************
*/

/*
*********************************************************************************************************
*                                       DIRECTORY FLAG DEFINES
*********************************************************************************************************
*/

#define  FS_DIR_STATE_CLOSED                               0u   /* Directory closed.                                    */
#define  FS_DIR_STATE_CLOSING                              1u   /* Directory closing.                                   */
#define  FS_DIR_STATE_OPENING                              2u   /* Directory opening.                                   */
#define  FS_DIR_STATE_OPEN                                 3u   /* Directory open.                                      */
#define  FS_DIR_STATE_EOF                                  4u   /* Directory at EOF.                                    */
#define  FS_DIR_STATE_ERR                                  5u   /* Directory error.                                     */


/*
*********************************************************************************************************
*                                               MACRO'S
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                             DATA TYPES
*********************************************************************************************************
*/

/*
*********************************************************************************************************
*                                      DIRECTORY ENTRY DATA TYPE
*********************************************************************************************************
*/

typedef  struct  fs_dirent {
    CPU_CHAR       Name[FS_CFG_MAX_FILE_NAME_LEN + 1u];
    FS_ENTRY_INFO  Info;
} FS_DIR_ENTRY;


/*
*********************************************************************************************************
*                                         DIRECTORY DATA TYPE
*********************************************************************************************************
*/

struct  fs_dir {
    FS_STATE       State;                                       /* Dir state.                                           */
    FS_CTR         RefCnt;                                      /* Ref cnts.                                            */
    FS_CTR         RefreshCnt;                                  /* Refresh cnts.                                        */

    FS_FILE_SIZE   Offset;                                      /* Current dir offset.                                  */

    FS_VOL        *VolPtr;                                      /* Ptr to mounted vol containing the dir.               */
    void          *DataPtr;                                     /* Ptr to data specific for a file system.              */

#if (FS_CFG_CTR_STAT_EN == DEF_ENABLED)
    FS_CTR         StatRdEntryCtr;                              /* Nbr rd entries.                                      */
#endif
};


/*
*********************************************************************************************************
*                                          GLOBAL VARIABLES
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                         FUNCTION PROTOTYPES
*********************************************************************************************************
*/

void            FSDir_Close    (FS_DIR        *p_dir,           /* Close a directory.                                   */
                                FS_ERR        *p_err);

CPU_BOOLEAN     FSDir_IsOpen   (CPU_CHAR      *name_full,       /* Test if dir is open                                  */
                                FS_ERR        *p_err);

FS_DIR         *FSDir_Open     (CPU_CHAR      *name_full,       /* Open a directory.                                    */
                                FS_ERR        *p_err);

void            FSDir_Rd       (FS_DIR        *p_dir,           /* Read a directory.                                    */
                                FS_DIR_ENTRY  *p_dir_entry,
                                FS_ERR        *p_err);

/*
*********************************************************************************************************
*                                   MANAGEMENT FUNCTION PROTOTYPES
*********************************************************************************************************
*/

FS_QTY   FSDir_GetDirCnt   (void);                              /* Get number of open directories.                      */

FS_QTY   FSDir_GetDirCntMax(void);                              /* Get maximum possible number of open directories.     */

/*
*********************************************************************************************************
*                                    INTERNAL FUNCTION PROTOTYPES
*********************************************************************************************************
*/

void     FSDir_ModuleInit  (FS_QTY         dir_cnt,             /* Initialize directory module.                         */
                            FS_ERR        *p_err);


/*
*********************************************************************************************************
*                                        CONFIGURATION ERRORS
*********************************************************************************************************
*/


/*
*********************************************************************************************************
*                                             MODULE END
*
* Note(s) : (1) See 'MODULE  Note #1'.
*********************************************************************************************************
*/

#endif                                                          /* End of directory module include (see Note #1).       */
#endif
