#include "common_types.h"
#include "stm32f4xx_ll_gpio.h"
#include "stm32f4xx_ll_bus.h"

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
    LL_GPIO_InitTypeDef GPIO_InitStruct = {0};

    /** Pins:
     *      Rows: [R0,R5] -> [PA0,PA5]
     *      Columns: [C0,C14] -> [PC0,PC14]
     */

    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOA);
    LL_AHB1_GRP1_EnableClock(LL_AHB1_GRP1_PERIPH_GPIOC);

    // PA pins are permanently inputs
    GPIO_InitStruct.Pin = LL_GPIO_PIN_0 | LL_GPIO_PIN_1 | LL_GPIO_PIN_2 | LL_GPIO_PIN_3 | LL_GPIO_PIN_4 | LL_GPIO_PIN_5;
    GPIO_InitStruct.Alternate = LL_GPIO_AF_0;
    GPIO_InitStruct.Mode = LL_GPIO_MODE_INPUT;
    GPIO_InitStruct.OutputType = LL_GPIO_OUTPUT_PUSHPULL;
    GPIO_InitStruct.Pull = LL_GPIO_PULL_UP;     // Internal Pull-Ups
    GPIO_InitStruct.Speed = LL_GPIO_SPEED_FREQ_MEDIUM;
    LL_GPIO_Init(GPIOA, &GPIO_InitStruct);

    // PC pins are initially set to inputs
    GPIO_InitStruct.Pin = 0xEFFF;
    GPIO_InitStruct.Pull = LL_GPIO_PULL_NO;     // No internal pull resistors
    LL_GPIO_Init(GPIOC, &GPIO_InitStruct);
}

/**
 * @brief   Sets the direction of the column pins.
 * @note    If the direction of a pin is set to an output, the data register is automatically filled with 0.
 * @warning Not Thread Safe.
 * @param   pins : mask of which pins to configure. ([0] corresponds to C0 and so on)
 * @param   dir : Direction enum. Specifies which direction the selected pins should be configued.
 * @return  None
 */
void BSP_Switches_SetColumnDirection(uint32_t pins, Direction dir) {
    // TODO: whichever bits the 'pins' variable are set to needs to be configured to whatever dir is.
    //          If the dir as an output, then the state should be set to 0.

    uint32_t mode = LL_GPIO_MODE_INPUT;

    if(dir == Output)
        mode = LL_GPIO_MODE_OUTPUT;

    for(int32_t i = 0; i <= 14; i++) {
        // If bit (1<<i) is 1, then dir should be set, otherwise leave that pin (bit) alone.
        if(pins | (1<<i)) {
            LL_GPIO_SetPinMode(GPIOC, (1<<i), mode);
        }
    }
}

/**
 * @brief   Gets what state of each row pins.
 * @warning Not Thread Safe.
 * @param   None
 * @return  Bitmap of the Row pins states
 */
uint32_t BSP_Switches_GetRowInputs(void) {
    // TODO: return the bitmap of the row input pins
    return GPIOA->IDR & 0x3F;
}
