#include "common_types.h"

/**
 * @brief   Initializes the GPIO interface. The Row pins need to be initializes as inputs,
 *          the Column pins should be easily modifiable to change it to an input and output.
 * @note    The Row pins should enable internal pull-up resistors.
 * @note    All column pins are automatically set to inputs.
 * @warning Not Thread Safe.
 * @param   None
 * @return  None
 */
void BSP_Switches_Init(void) {
    // TODO: Initialize GPIO pins that correspond to the rows and columns configured in keyboard_cfg.h.
    //          Rows need to have internal pull-ups enabled.
    //          Column pins should have no internal pull-up or down resistors enabled
}

/**
 * @brief   Sets the direction of the column pins.
 * @param   pins : mask of which pins to configure. ([0] corresponds to C0 and so on)
 * @param   dir : Direction enum. Specifies which direction the selected pins should be configued.
 * @warning Not Thread Safe.
 * @return  None
 */
void BSP_Switches_SetColumnDirection(uint32_t pins, Direction dir) {
    // TODO: whichever bits the 'pins' variable are set to needs to be configured to whatever dir is.
    //          If the dir as an output, then the state should be set to 0.
}

/**
 * @brief   Gets what state of each row pins.
 * @warning Not Thread Safe.
 * @param   None
 * @return  Bitmap of the Row pins states
 */
uint32_t BSP_Switches_GetRowInputs(void) {
    // TODO: return the bitmap of the row input pins
    return 0;
}
