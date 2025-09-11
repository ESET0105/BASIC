#ifndef HAL_GPIO_H
#define HAL_GPIO_H

#include <avr/io.h>
#define input 0
#define output 1




void hal_gpio_init(volatile uint8_t *port, uint8_t pin, uint8_t direction);
void hal_gpio_write(volatile uint8_t *port, uint8_t pin, uint8_t value);
void hal_gpio_toggle(volatile uint8_t *port, uint8_t pin);
uint8_t hal_gpio_read(volatile uint8_t *port, uint8_t pin);




#endif



