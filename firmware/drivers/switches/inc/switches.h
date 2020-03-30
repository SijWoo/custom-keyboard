#ifndef __SWITCHES_H
#define __SWITCHES_H

/**
 * @brief   How to concisely use this driver:\n
 *              1. Call Switches_Scan inside a periodic task or function\n
 *              2. Call Switches_PopKeyBlock inside the foreground task (main)\n\n
 * 
 *          The other functions are useful for bare metal programs and not needed. 
 */

#include <stdint.h>
#include <stdbool.h>

/**
 * @brief   Initializes keyboard's switch matrix.
 * @param   None
 * @return  None
 */
void Switches_Init(void);

/**
 * @brief   Scans the keyboard switch matrix and records which keys have been placed.
 *          If keys have been pressed, the ASCII value of the key is placed into a Queue.
 *          Use the Switch_PopKey function to get the ASCII value. This function returns
 *          how many keys have been pressed, not the ASCII value.
 * @note    Call this function inside a periodic task/interrupt for debouncing. Ideal
 *          periodic value is 25ms for debouncing.
 * @note    Thread Safe. Non-blocking.
 * @note    If the internal Queue is full, then key presses will just be dropped until
 *          the Queue has space.
 * @param   None
 * @return  number of keys pressed during the scan
 */
uint8_t Switches_Scan(void);

/**
 * @brief   Pops the ASCII value of a pressed key from an internal Queue.
 * @note    Thread Safe.
 * @warning This is a blocking statement. Do NOT call this inside an interrupt.
 * @param   key : pointer to place the popped ASCII value
 * @return  None
 */
void Switches_PopKeyBlock(unsigned char *key);

/**
 * @brief   Pops the ASCII value of a pressed key from an internal Queue.
 * @note    This is a non-blocking statement. You may call this inside an interrupt.
 * @note    Thread Safe.
 * @param   key : pointer to place the popped ASCII value
 * @return  boolean true if a value was successfully popped
 */
bool Switches_PopKey(unsigned char *key);

/**
 * @brief   Pushes the ASCII value of a pressed key into an internal Queue.
 * @note    Thread Safe.
 * @warning This is a blocking statement. Do NOT call this inside an interrupt.
 * @param   key : ASCII value
 * @return  None
 */
void Switches_PushKeyBlock(unsigned char key);

/**
 * @brief   Pushes the ASCII value of a pressed key into an internal Queue.
 * @note    Thread Safe.
 * @note    This is a non-blocking statement. You may call this inside an interrupt.
 * @note    Calling this function is not necessary if Switches_Scan is used.
 * @param   key : ASCII value
 * @return  boolean true if a value was successfully pushed
 */
bool Switches_PushKey(unsigned char key);

/**
 * @brief   Gets how many key presses have yet to be processed (popped).
 * @note    Thread Safe.
 * @param   None
 * @return  number of ASCII values inside the Queue
 */
uint32_t Switches_GetQSize(void);

#endif
