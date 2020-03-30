#ifndef __BSP_SWITCHES_H
#define __BSP_SWITCHES_H

#include "common.h"

/**
 * @brief   Initializes the GPIO interface. The Row pins need to be initializes as inputs,
 *          the Column pins should be easily modifiable to change it to an input and output.
 * @note    The Row pins should enable internal pull-up resistors.
 * @param   None
 * @return  None
 */
void BSP_Switches_Init(void);

/**
 * @brief   Sets the direction of the column pins.
 * @param   pins : mask of which pins to configure. ([0] corresponds to C0 and so on)
 * @param   dir : Direction enum. Specifies which direction the selected pins should be configued.
 * @return  None
 */
void BSP_Switches_SetColumnDirection(uint32_t pins, Direction dir);

/**
 * @brief   Gets what state of each row pins.
 * @param   None
 * @return  Bitmap of the Row pins states
 */
uint32_t BSP_Switches_GetRowInputs(void);

#endif
