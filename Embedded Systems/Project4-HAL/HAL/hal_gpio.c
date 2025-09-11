#include "hal_gpio.h"
//#include "../config/led_config.h"

void hal_gpio_init(volatile uint8_t *port , uint8_t pin, uint8_t direction){
    volatile uint8_t *ddr = port - 1;
    if (direction == OUTPUT) {
        *ddr |= (1 << pin);
    } else {
        *ddr &= ~(1 << pin);
    }
}

void hal_gpio_write(volatile uint8_t *port , uint8_t pin, uint8_t value){
    if (value) {
        *port |= (1<< pin);
    } else {
        *port &= ~(1 << pin);
    }
}


void hal_gpio_toggle(volatile uint8_t *port , uint8_t pin){
    *port ^= (1<<pin);
}


uint8_t hal_gpio_read(volatile uint8_t *port , uint8_t pin){
    volatile uint8_t *pin_reg = port - 2;
    return ((*pin_reg) & (1<<pin)) ? 1 : 0;
}
 



